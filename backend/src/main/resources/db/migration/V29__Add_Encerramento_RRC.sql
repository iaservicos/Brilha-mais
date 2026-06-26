-- V29__Add_Encerramento_RRC.sql
-- Restaurando a coluna encerramento_rrc na tabela tb_reincidencia para uso na regra de negocio mensal

ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS encerramento_rrc TIMESTAMP;
