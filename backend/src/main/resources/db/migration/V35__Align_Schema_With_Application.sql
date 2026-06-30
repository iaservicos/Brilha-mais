-- =================================================================================
-- V35 - ALINHAMENTO DE SCHEMA DO BANCO COM A APLICAÇÃO (PYTHON/JAVA)
-- =================================================================================
-- As aplicações (Chamado.java e api_ingestao.py) sofreram refatorações 
-- onde as propriedades foram renomeadas para refletir os cabeçalhos 
-- da planilha do Excel.
-- Esta migration aplica os devidos "RENAME" no banco de dados Supabase (Render)
-- garantindo que o backend em produção encontre as colunas esperadas 
-- sem quebrar o ecossistema de views.
-- =================================================================================

-- 1. Renomeia as colunas base para match com o código Java e Ingestão
ALTER TABLE tb_chamado RENAME COLUMN numero_chamado TO chamado;
ALTER TABLE tb_chamado RENAME COLUMN data_abertura TO ft;
ALTER TABLE tb_chamado RENAME COLUMN status_sla TO sla_status;
ALTER TABLE tb_chamado RENAME COLUMN ct_base TO assistencia_centro_trabalho;

-- 2. Adiciona colunas redundantes que foram inseridas nas entidades
ALTER TABLE tb_chamado ADD COLUMN assistencia_nome VARCHAR(255);
ALTER TABLE tb_chamado ADD COLUMN tecnico_nome VARCHAR(255);

-- 3. Remove a constraint NOT NULL de FT (antiga data_abertura) para permitir 
-- a ingestão de linhas incompletas da planilha sem disparar NotNullViolation
ALTER TABLE tb_chamado ALTER COLUMN ft DROP NOT NULL;
