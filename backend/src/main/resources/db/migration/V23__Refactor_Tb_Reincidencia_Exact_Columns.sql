-- =================================================================================
-- V23 - REFATORAÇÃO ESTRUTURAL DA TABELA DE REINCIDÊNCIA (LIMITADA A 26 COLUNAS)
-- =================================================================================

-- 1. Remover colunas legadas que não estão presentes no requisito das 26 colunas exatas
ALTER TABLE tb_reincidencia DROP COLUMN IF EXISTS motivo_classificacao;
ALTER TABLE tb_reincidencia DROP COLUMN IF EXISTS responsavel_auditoria;
ALTER TABLE tb_reincidencia DROP COLUMN IF EXISTS meses_rrc;
ALTER TABLE tb_reincidencia DROP COLUMN IF EXISTS tecnico_anterior;
ALTER TABLE tb_reincidencia DROP COLUMN IF EXISTS abertura_anterior;
ALTER TABLE tb_reincidencia DROP COLUMN IF EXISTS abertura_rrc;

-- 2. Garantir que a coluna 'intervalo_dias' existe, caso não exista (já existia na V1, mas por garantia)
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS intervalo_dias INT;

-- Nota: As outras 25 colunas já foram garantidas na V22 (e V8).
-- Com este script, a tabela tb_reincidencia fica restrita exatamente às 26 colunas analíticas,
-- além de sua chave primária id_reincidencia.
