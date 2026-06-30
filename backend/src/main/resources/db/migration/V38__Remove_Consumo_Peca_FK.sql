-- =================================================================================
-- V38 - REMOÇÃO DA TRAVA DA CHAVE ESTRANGEIRA DA TABELA DE CONSUMO DE PEÇAS
-- =================================================================================
-- Esta migration remove a restrição de FK para permitir a ingestão de peças
-- órfãs, conforme solicitado. Nenhuma view ou coluna é alterada.
-- =================================================================================

ALTER TABLE tb_consumo_peca DROP CONSTRAINT IF EXISTS tb_consumo_peca_numero_chamado_fkey;
ALTER TABLE tb_consumo_peca DROP CONSTRAINT IF EXISTS tb_consumo_peca_chamado_fkey;
