CREATE TABLE IF NOT EXISTS tb_reincidencia_encerrados (
    id SERIAL PRIMARY KEY,
    numero_chamado VARCHAR(50) NOT NULL UNIQUE,
    data_encerramento TIMESTAMP,
    ct_base VARCHAR(50),
    uf VARCHAR(2),
    nome_atp VARCHAR(255),
    tecnico_nome VARCHAR(255),
    encdesc TEXT
);
