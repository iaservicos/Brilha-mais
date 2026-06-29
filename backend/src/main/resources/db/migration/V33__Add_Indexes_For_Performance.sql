-- V33: ADIÇÃO DE ÍNDICES PARA OTIMIZAR PERFORMANCE DO MOTOR DE CÁLCULO
-- O objetivo destes índices é eliminar Full Table Scans durante as apurações.

-- Índice para a tabela de chamados (FT é usado intensamente para filtrar períodos)
CREATE INDEX IF NOT EXISTS idx_chamado_ft ON tb_chamado (ft);

-- Índice para a tabela de reincidências (encerramento_rrc é usado como data base)
CREATE INDEX IF NOT EXISTS idx_reincidencia_enc_rrc ON tb_reincidencia (encerramento_rrc);

-- Índice para a tabela de consumo de peças
CREATE INDEX IF NOT EXISTS idx_consumo_peca_ft ON tb_consumo_peca (ft);
