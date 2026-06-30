-- =================================================================================
-- V36 - ALINHAMENTO ESTRITO DO SCHEMA COM A PLANILHA HOMOLOGADA (PARTE 2)
-- =================================================================================
-- Esta migration:
-- 1. Renomeia classificacao_chamado para classifica_chamado.
-- 2. Exclui permanentemente as colunas legadas do V1 que não fazem parte do escopo.
-- 3. Mantém o id_tecnico intacto para preservar a arquitetura relacional de KPIs.
-- =================================================================================

-- 1. Renomeia colunas para bater com o padrão homologado (Base DL)
ALTER TABLE tb_chamado RENAME COLUMN classificacao_chamado TO classifica_chamado;

-- 2. LIMPEZA TOTAL (OPÇÃO A): Remove todas as colunas que não estão na lista homologada
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
