import os
import pandas as pd
from sqlalchemy import create_engine, text

# Conexão com o banco (usando variável de ambiente ou default para local)
DB_URL = os.getenv('DATABASE_URL', "postgresql://postgres.eychznasujcjfdupizfm:Br%40sil%23%24%252026@aws-1-us-east-1.pooler.supabase.com:5432/postgres?sslmode=require")
engine = create_engine(DB_URL)

FILE_PATH = "c:/Users/marci/Documents/Positivo/brilha/Project_Docs/docs/BaseATP.xlsx"

def ingest_base_atp():
    print("Lendo BaseATP.xlsx...")
    df = pd.read_excel(FILE_PATH)
    
    # Padroniza nomes das colunas lidas
    # Esperado: 'CT', 'ATP', 'CIDADE', 'TIPO', 'UF', 'REGIÃO', 'SUPERVISOR', 'RESPONSAVEL', 'ATP RESUMIDAS', 'Tipo ATP', 'C&C CT e Cidade'
    
    mapping_supervisores = {
        "ADRIANO": "Adriano Luiz Cherubini Pompeo",
        "ALESSANDRO": "Alessandro Detrano Da Silva",
        "ANTONIO": "Antonio Carlos Sant'anna",
        "CLEANDRO": "Cleandro De Souza Rocha",
        "CRISTIANE": "Cristiane Aparecida De Almeida",
        "DEYVSON": "Deyvson Leopoldino Da Silva",
        "JOYCE": "Joyce Gomes Rodrigues",
        "LUCAS GAEM": "Lucas De Lara Gaem",
        "MAROE": "Maroe Kao Da Silva",
        "NINA": "Nina Carla Bitencourt Aguilar",
        "RENATO": "RENATO DA SILVA SUCUPIRA",
        "THIAGO": "Thiago Cardoso da Silva"
    }
    
    with engine.connect() as conn:
        with conn.begin():
            print("1. Processando Supervisores...")
            supervisores = df['SUPERVISOR'].dropna().unique()
            
            for sup_name in supervisores:
                sup_name_clean = str(sup_name).strip().upper()
                if not sup_name_clean:
                    continue
                
                # Se houver mapeamento pro nome completo, usa ele. Se não, mantem o que veio
                sup_name_full = mapping_supervisores.get(sup_name_clean, sup_name_clean)
                
                # Check se já existe
                res = conn.execute(text("SELECT id_supervisor FROM tb_supervisor WHERE UPPER(nome_completo) = :nome"), {"nome": sup_name_full.upper()}).fetchone()
                if not res:
                    conn.execute(text("""
                        INSERT INTO tb_supervisor (nome_completo, is_primeiro_acesso, role, ativo)
                        VALUES (:nome, true, 'ADMINISTRADOR', true)
                    """), {"nome": sup_name_full})
                    print(f"Supervisor inserido: {sup_name_full}")

            print("2. Processando ATPs...")
            # Extrai os CTs atuais no Excel para depois remover os que não existem
            cts_excel = []
            
            for _, row in df.iterrows():
                try:
                    ct = str(row['CT']).strip()
                    if ct == 'nan' or not ct:
                        continue
                    
                    cts_excel.append(ct)
                    atp = str(row.get('ATP', ''))[:255]
                    cidade = str(row.get('CIDADE', ''))[:100]
                    tipo = str(row.get('TIPO', ''))[:50]
                    uf = str(row.get('UF', ''))[:2]
                    regiao = str(row.get('REGIÃO', ''))[:50]
                    supervisor = str(row.get('SUPERVISOR', ''))[:100].upper()
                    supervisor_full = mapping_supervisores.get(supervisor, supervisor)
                    responsavel = str(row.get('RESPONSAVEL', ''))[:100]
                    atp_resumidas = str(row.get('ATP RESUMIDAS', ''))[:100]
                    tipo_atp = str(row.get('Tipo ATP', ''))[:50]
                    cc_ct_cidade = str(row.get('C&C CT e Cidade', ''))[:255]
                    
                    # Upsert na tb_base_atp
                    conn.execute(text("""
                        INSERT INTO tb_base_atp (
                            ct_codigo, nome_atp, tipo, cidade, uf, regiao, 
                            supervisor, responsavel, atp_resumidas, tipo_atp, cc_ct_cidade
                        ) VALUES (
                            :ct, :atp, :tipo, :cidade, :uf, :regiao, 
                            :supervisor, :responsavel, :atp_resumidas, :tipo_atp, :cc_ct_cidade
                        ) ON CONFLICT (ct_codigo) DO UPDATE SET
                            nome_atp = EXCLUDED.nome_atp,
                            tipo = EXCLUDED.tipo,
                            cidade = EXCLUDED.cidade,
                            uf = EXCLUDED.uf,
                            regiao = EXCLUDED.regiao,
                            supervisor = EXCLUDED.supervisor,
                            responsavel = EXCLUDED.responsavel,
                            atp_resumidas = EXCLUDED.atp_resumidas,
                            tipo_atp = EXCLUDED.tipo_atp,
                            cc_ct_cidade = EXCLUDED.cc_ct_cidade
                    """), {
                        "ct": ct, "atp": atp, "tipo": tipo, "cidade": cidade, "uf": uf, "regiao": regiao,
                        "supervisor": supervisor, "responsavel": responsavel, "atp_resumidas": atp_resumidas,
                        "tipo_atp": tipo_atp, "cc_ct_cidade": cc_ct_cidade
                    })
                except Exception as e:
                    print(f"Erro ao processar linha CT {row.get('CT')}: {e}")
            
            print("3. Removendo ATPs inexistentes no Excel...")
            # Pega todos os CTs do banco
            db_cts = [r[0] for r in conn.execute(text("SELECT ct_codigo FROM tb_base_atp")).fetchall()]
            to_delete = [ct for ct in db_cts if ct not in cts_excel]
            
            if to_delete:
                print(f"Excluindo {len(to_delete)} bases que não estão mais na planilha...")
                for ct in to_delete:
                    conn.execute(text("DELETE FROM tb_base_atp WHERE ct_codigo = :ct"), {"ct": ct})
                    
            print("Processamento concluído com sucesso!")

if __name__ == "__main__":
    ingest_base_atp()
