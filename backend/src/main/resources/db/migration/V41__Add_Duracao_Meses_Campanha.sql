-- =================================================================================
-- V41: ADD DURACAO MESES EM CAMPANHA
-- =================================================================================

ALTER TABLE tb_campanha ADD COLUMN IF NOT EXISTS duracao_meses INT DEFAULT 1;

-- Atualizar campanhas antigas (se houver, presumimos 1 mês)
UPDATE tb_campanha SET duracao_meses = 1 WHERE duracao_meses IS NULL;
