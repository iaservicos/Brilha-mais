-- =================================================================================
-- V25 - REESTRUTURAÇÃO DA TABELA DE ENCERRADOS RRC E LIMPEZA
-- =================================================================================

-- 1. Excluímos a tabela antiga inteira (que contém dados sem datas)
DROP TABLE IF EXISTS tb_reincidencia_encerrados CASCADE;

-- 2. Recriamos a tabela exatamente com as 8 colunas exigidas + chave primária
CREATE TABLE tb_reincidencia_encerrados (
    id_reinc_encerrado SERIAL PRIMARY KEY,
    chamado VARCHAR(50) UNIQUE NOT NULL,
    segmento VARCHAR(150),
    projeto VARCHAR(150),
    assistencia_codigo VARCHAR(100),
    assistencia_nome VARCHAR(255),
    ft TIMESTAMP,
    tecnico_nome VARCHAR(255),
    texto_encerrado TEXT
);

-- Índices úteis para acelerar as buscas do painel (como as métricas usam a data 'ft')
CREATE INDEX idx_reinc_encerrados_ft ON tb_reincidencia_encerrados (ft);
CREATE INDEX idx_reinc_encerrados_tecnico ON tb_reincidencia_encerrados (tecnico_nome);
