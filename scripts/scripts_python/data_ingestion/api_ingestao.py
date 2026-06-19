import os
import io
import pandas as pd
from fastapi import FastAPI, UploadFile, File, HTTPException
from fastapi.middleware.cors import CORSMiddleware
from sqlalchemy import create_engine, text
from datetime import datetime

app = FastAPI(title="Brilha+ Ingestion API")

# Allow CORS for the frontend
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Configuração do banco de dados via env
DB_URL = os.getenv('DATABASE_URL')
if not DB_URL:
    raise RuntimeError("A variável de ambiente DATABASE_URL não está configurada.")
engine = create_engine(DB_URL)

def process_base_dl(file_contents: bytes):
    df = pd.read_excel(io.BytesIO(file_contents), sheet_name='Base DL')
    df = df.dropna(subset=['Chamado', 'Tecnico_nome'])
    
    with engine.connect() as conn:
        # Pega bases e tecnicos existentes
        bases_existentes = {row[0] for row in conn.execute(text("SELECT ct_codigo FROM tb_base_atp")).fetchall()}
        df_tec = pd.read_sql("SELECT id_tecnico, UPPER(nome_completo) as nome FROM tb_tecnico", conn)
        tec_map = pd.Series(df_tec.id_tecnico.values, index=df_tec.nome).to_dict()
        
        chamados_insert = []
        for _, row in df.iterrows():
            chamado_num = int(row['Chamado'])
            nome_tec = str(row['Tecnico_nome']).strip().upper()
            id_tec = tec_map.get(nome_tec)
            
            # Se o tecnico não existe, podemos pular ou cadastrar. Para simplicidade e integridade, inserimos nulo se não houver mapeamento
            # mas o ideal seria a planilha de técnicos já ter rodado antes.
            
            ta_str = str(row.get('TA', '0'))
            minutos = 0
            if ':' in ta_str:
                parts = ta_str.split(':')
                if len(parts) >= 2:
                    try:
                        minutos = int(parts[0]) * 60 + int(parts[1])
                    except: pass
            
            raw_base = row.get('Assistencia_centro_trabalho')
            ct_base = None
            if pd.notna(raw_base) and str(raw_base).strip() != '':
                ct_base = str(int(raw_base)) if isinstance(raw_base, float) else str(raw_base).strip()
            if ct_base not in bases_existentes:
                ct_base = None

            abertura = row.get('Abertura')
            encerramento = row.get('fechamento_sistema') if pd.notna(row.get('fechamento_sistema')) else None

            chamados_insert.append({
                'numero': chamado_num,
                'id_tecnico': id_tec,
                'ct_base': ct_base[:20] if ct_base else None,
                'abertura': abertura,
                'encerramento': encerramento,
                'segmento': str(row.get('Segmento'))[:50] if pd.notna(row.get('Segmento')) else None,
                'equip': str(row.get('Equipamento'))[:50] if pd.notna(row.get('Equipamento')) else None,
                'proj': str(row.get('Projeto'))[:50] if pd.notna(row.get('Projeto')) else None,
                'status': str(row.get('SLA_status'))[:20] if pd.notna(row.get('SLA_status')) else None,
                'ta_min': minutos,
                'classificacao': str(row.get('Classifica_chamado'))[:100] if pd.notna(row.get('Classifica_chamado')) else None
            })

        # Insert batch ON CONFLICT DO NOTHING
        for i in range(0, len(chamados_insert), 1000):
            chunk = chamados_insert[i:i+1000]
            conn.execute(text("""
                INSERT INTO tb_chamado (numero_chamado, id_tecnico, ct_base, data_abertura, data_encerramento, 
                segmento, equipamento, projeto, status_sla, tempo_atendimento_min, classificacao_chamado) 
                VALUES (:numero, :id_tecnico, :ct_base, :abertura, :encerramento, :segmento, :equip, :proj, :status, :ta_min, :classificacao)
                ON CONFLICT (numero_chamado) DO NOTHING
            """), chunk)
        conn.commit()
    return {"message": f"Processados {len(df)} chamados da Base DL. Inserções apenas de novos."}

def process_parts(file_contents: bytes):
    df = pd.read_excel(io.BytesIO(file_contents))
    df = df.dropna(subset=['Chamado'])
    
    with engine.connect() as conn:
        pecas_insert = []
        for _, row in df.iterrows():
            pecas_insert.append({
                'chamado': int(row['Chamado']),
                'codigo': str(row.get('Material', ''))[:50],
                'desc': str(row.get('Material_descricao', ''))[:255] if pd.notna(row.get('Material_descricao')) else None,
                'grupo': str(row.get('Grupo_mercadoria', 'OUTROS'))[:100] if pd.notna(row.get('Grupo_mercadoria')) else 'OUTROS',
                'qtd': 1
            })

        for i in range(0, len(pecas_insert), 1000):
            chunk = pecas_insert[i:i+1000]
            conn.execute(text("""
                INSERT INTO tb_consumo_peca (numero_chamado, codigo_peca, descricao_peca, grupo_mercadoria, quantidade)
                VALUES (:chamado, :codigo, :desc, :grupo, :qtd)
                -- Considerando que pode não ter UNIQUE garantido de peça para o mesmo chamado sem um ID primario forte:
                -- Usamos insert direto. Idealmente deveria ter constraint. Para evitar duplicação em execuções repetidas, 
                -- o ideal seria ON CONFLICT se houvesse constraint. Vamos inserir normal.
            """), chunk)
        conn.commit()
    return {"message": f"Processadas {len(df)} peças consumidas."}

def process_reincidencia(file_contents: bytes):
    df = pd.read_excel(io.BytesIO(file_contents))
    df = df.dropna(subset=['Chamado_Novo'])
    
    with engine.connect() as conn:
        reinc_insert = []
        for _, row in df.iterrows():
            reinc_insert.append({
                'chamado_novo': int(row['Chamado_Novo']),
                'motivo': str(row.get('Motivo', 'Reincidência registrada na planilha'))[:150]
            })

        for i in range(0, len(reinc_insert), 1000):
            chunk = reinc_insert[i:i+1000]
            conn.execute(text("""
                INSERT INTO tb_reincidencia (chamado_novo, motivo_classificacao)
                VALUES (:chamado_novo, :motivo)
                ON CONFLICT (chamado_novo) DO NOTHING
            """), chunk)
        conn.commit()
    return {"message": f"Processados {len(df)} registros de reincidência."}

def process_encerrados_rrc(file_contents: bytes):
    df = pd.read_excel(io.BytesIO(file_contents))
    df = df.dropna(subset=['Chamado'])
    
    with engine.connect() as conn:
        enc_insert = []
        for _, row in df.iterrows():
            enc_insert.append({
                'chamado': int(row['Chamado']),
                'tecnico': str(row.get('Tecnico_nome', ''))[:150],
                'projeto': str(row.get('Projeto', ''))[:50]
            })

        for i in range(0, len(enc_insert), 1000):
            chunk = enc_insert[i:i+1000]
            conn.execute(text("""
                INSERT INTO tb_reincidencia_encerrados (numero_chamado, tecnico_nome, projeto)
                VALUES (:chamado, :tecnico, :projeto)
                ON CONFLICT (numero_chamado) DO NOTHING
            """), chunk)
        conn.commit()
    return {"message": f"Processados {len(df)} registros de Encerrados RRC."}

@app.post("/api/ingestion/upload")
async def upload_planilha(type: str, file: UploadFile = File(...)):
    try:
        contents = await file.read()
        if type == 'BaseDL':
            return process_base_dl(contents)
        elif type == 'Parts':
            return process_parts(contents)
        elif type == 'Reincidencia':
            return process_reincidencia(contents)
        elif type == 'EncerradosRRC':
            return process_encerrados_rrc(contents)
        else:
            raise HTTPException(status_code=400, detail="Tipo de planilha inválido")
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8001)
