-- =================================================================================
-- V39 - REMOÇÃO DAS TRAVAS DE CHAVE ESTRANGEIRA DA TABELA DE REINCIDÊNCIAS
-- =================================================================================
-- Esta migration remove as restrições de FK para permitir a ingestão de chamados
-- reincidentes que não constam mais na BaseDL, tornando a tabela autônoma.
-- =================================================================================

ALTER TABLE tb_reincidencia DROP CONSTRAINT IF EXISTS tb_reincidencia_chamado_original_fkey;
ALTER TABLE tb_reincidencia DROP CONSTRAINT IF EXISTS tb_reincidencia_chamado_novo_fkey;
