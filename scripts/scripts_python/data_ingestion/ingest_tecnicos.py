import os
import pandas as pd
from sqlalchemy import create_engine, text

# Usamos a mesma URL definida no ambiente ou uma padrão para dev local
DB_URL = os.getenv('DATABASE_URL', "postgresql://postgres.eychznasujcjfdupizfm:Br%40sil%23%24%252026@aws-1-us-east-1.pooler.supabase.com:5432/postgres?sslmode=require")
engine = create_engine(DB_URL)

FILE_PATH = "c:/Users/marci/Documents/Positivo/brilha/Project_Docs/docs/Tecnicos.xlsx"

def ingest_tecnicos():
    print("Lendo Tecnicos.xlsx...")
    
    # A tabela tem o cabeçalho na linha 4 (index 3)
    df = pd.read_excel(FILE_PATH, skiprows=4)
    
    # As colunas parecem ficar sem nome ou com nomes esquisitos no pandas, vamos renomear
    if len(df.columns) >= 4:
        df.columns = ['Vazio', 'Matricula', 'Nome', 'Base ATP'] + list(df.columns[4:])
    
    with engine.connect() as conn:
        with conn.begin():
            print("Carregando mapa de Bases (atp_resumidas -> ct_codigo)...")
            base_map_rows = conn.execute(text("SELECT atp_resumidas, MIN(ct_codigo) FROM tb_base_atp WHERE atp_resumidas IS NOT NULL GROUP BY atp_resumidas")).fetchall()
            base_map = {str(r[0]).strip().upper(): str(r[1]) for r in base_map_rows}
            
            print("Processando Técnicos...")
            
            # Limpa valores nulos no nome
            df_validos = df.dropna(subset=['Nome'])
            inseridos = 0
            
            for _, row in df_validos.iterrows():
                nome_bruto = str(row.get('Nome', '')).strip().upper()
                base_atp = str(row.get('Base ATP', '')).strip().upper()
                
                if not nome_bruto or nome_bruto == 'NAN':
                    continue
                
                # Definição de Cargo e Role
                cargo = 'Técnico On-site'
                role = 'PADRAO'
                
                if 'MARCIO DA SILVA EDUARDO' in nome_bruto:
                    cargo = 'Moderador'
                    role = 'MODERADOR'
                
                # Encontrar o ct_codigo
                ct_base = base_map.get(base_atp)
                if not ct_base:
                    print(f"Aviso: Base '{base_atp}' não encontrada para o técnico {nome_bruto}. Pulando.")
                    continue
                
                # Verifica se o técnico já existe (Case Insensitive)
                res = conn.execute(
                    text("SELECT id_tecnico FROM tb_tecnico WHERE UPPER(nome_completo) = :nome"), 
                    {"nome": nome_bruto}
                ).fetchone()
                
                if not res:
                    conn.execute(text("""
                        INSERT INTO tb_tecnico (nome_completo, ct_base, cargo, ativo, is_primeiro_acesso, role)
                        VALUES (:nome, :base, :cargo, true, true, :role)
                    """), {
                        "nome": nome_bruto,
                        "base": ct_base,
                        "cargo": cargo,
                        "role": role
                    })
                    inseridos += 1
                    print(f"Técnico Inserido: {nome_bruto} - Role: {role} - Base: {base_atp} ({ct_base})")

            print(f"Total de {inseridos} técnicos inseridos com sucesso (sem matrícula).")

if __name__ == "__main__":
    ingest_tecnicos()
