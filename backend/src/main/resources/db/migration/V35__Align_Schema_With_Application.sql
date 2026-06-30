-- =================================================================================
-- V35 - ALINHAMENTO ESTRITO DO SCHEMA COM A PLANILHA HOMOLOGADA
-- =================================================================================
-- Esta migration:
-- 1. Renomeia as colunas para bater com os nomes homologados da Base DL.
-- 2. Exclui permanentemente as colunas legadas do V1 que não fazem parte do escopo.
-- 3. Mantém o id_tecnico intacto para preservar a arquitetura relacional de KPIs.
-- =================================================================================

-- 1. Renomeia colunas para bater com o padrão homologado (Base DL)
ALTER TABLE tb_chamado RENAME COLUMN numero_chamado TO chamado;
ALTER TABLE tb_chamado RENAME COLUMN data_abertura TO ft;
ALTER TABLE tb_chamado RENAME COLUMN status_sla TO sla_status;
ALTER TABLE tb_chamado RENAME COLUMN ct_base TO assistencia_centro_trabalho;
ALTER TABLE tb_chamado RENAME COLUMN classificacao_chamado TO classifica_chamado;

-- 2. Adiciona as colunas nominais que vêm da planilha e faltavam no schema
ALTER TABLE tb_chamado ADD COLUMN IF NOT EXISTS assistencia_nome VARCHAR(255);
ALTER TABLE tb_chamado ADD COLUMN IF NOT EXISTS tecnico_nome VARCHAR(255);

-- 3. Remove a obrigatoriedade (NOT NULL) de FT para evitar bloqueios na ingestão
ALTER TABLE tb_chamado ALTER COLUMN ft DROP NOT NULL;

-- 4. LIMPEZA TOTAL (OPÇÃO A): Remove todas as colunas que não estão na lista homologada
-- (Obs: id_tecnico é preservado)
ALTER TABLE tb_chamado DROP COLUMN IF EXISTS data_encerramento;
ALTER TABLE tb_chamado DROP COLUMN IF EXISTS segmento;
ALTER TABLE tb_chamado DROP COLUMN IF EXISTS tempo_atendimento_min;
ALTER TABLE tb_chamado DROP COLUMN IF EXISTS sla_data_limite;
ALTER TABLE tb_chamado DROP COLUMN IF EXISTS cliente_nome;
ALTER TABLE tb_chamado DROP COLUMN IF EXISTS texto_abertura;
ALTER TABLE tb_chamado DROP COLUMN IF EXISTS ocorrencia_chamado;
ALTER TABLE tb_chamado DROP COLUMN IF EXISTS defeito;
ALTER TABLE tb_chamado DROP COLUMN IF EXISTS sla_cef;
ALTER TABLE tb_chamado DROP COLUMN IF EXISTS ofensor;
ALTER TABLE tb_chamado DROP COLUMN IF EXISTS encdesc;
ALTER TABLE tb_chamado DROP COLUMN IF EXISTS pp;
ALTER TABLE tb_chamado DROP COLUMN IF EXISTS status_chamado;
