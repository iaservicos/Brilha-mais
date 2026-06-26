-- =================================================================================
-- V22 - ADICIONANDO CAMPOS DETALHADOS NA TABELA DE REINCIDÊNCIA
-- =================================================================================

ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS classificacao VARCHAR(150);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS defeito_rrc VARCHAR(255);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS defeito_anterior VARCHAR(255);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS aplicado_peca_rrc VARCHAR(255);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS aplicado_peca_anterior VARCHAR(255);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS encdesc_rrc VARCHAR(255);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS encdesc_anterio VARCHAR(255);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS segmento_rrc VARCHAR(100);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS ct_rrc VARCHAR(100);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS ct_anterior VARCHAR(100);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS material_descricao_rrc VARCHAR(255);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS equipamento VARCHAR(150);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS projeto_anterior VARCHAR(150);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS tecnico_nome_rrc VARCHAR(150);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS tecnico_nome_anterior VARCHAR(150);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS texto_encerrado_rrc TEXT;
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS motivo_class VARCHAR(150);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS sub_class VARCHAR(150);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS mesmo_motivo VARCHAR(150);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS peca VARCHAR(150);
ALTER TABLE tb_reincidencia ADD COLUMN IF NOT EXISTS porque_nao_evitamos TEXT;
