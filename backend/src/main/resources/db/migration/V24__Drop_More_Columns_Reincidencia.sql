-- =================================================================================
-- V24 - REMOÇÃO ADICIONAL DE COLUNAS DA TABELA DE REINCIDÊNCIA
-- =================================================================================

-- A pedido do usuário, as seguintes colunas também foram eliminadas para enxugar a tabela:
ALTER TABLE tb_reincidencia DROP COLUMN IF EXISTS encdesc_rrc;
ALTER TABLE tb_reincidencia DROP COLUMN IF EXISTS encdesc_anterio;
ALTER TABLE tb_reincidencia DROP COLUMN IF EXISTS aplicado_peca_rrc;
ALTER TABLE tb_reincidencia DROP COLUMN IF EXISTS defeito_rrc;
ALTER TABLE tb_reincidencia DROP COLUMN IF EXISTS encerramento_rrc;

-- Nota: encerramento_rrc já havia sido removido na V23, mas fica aqui garantido caso a V23 
-- estivesse em uma ramificação diferente.
