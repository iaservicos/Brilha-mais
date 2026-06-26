-- =================================================================================
-- V30: SINCRONIZAÇÃO ABSOLUTA DA BASE ATP E TABELA DE SUPERVISORES
-- =================================================================================

-- 1. Criação da tabela de Supervisores Isolada
CREATE TABLE tb_supervisor (
    id_supervisor SERIAL PRIMARY KEY,
    matricula VARCHAR(20) UNIQUE,
    nome_completo VARCHAR(150) NOT NULL,
    senha VARCHAR(255),
    role VARCHAR(50) DEFAULT 'ADMINISTRADOR',
    ativo BOOLEAN DEFAULT TRUE,
    is_primeiro_acesso BOOLEAN DEFAULT TRUE
);

-- 2. Atualização de colunas da tb_base_atp (Espelhamento do Excel)
ALTER TABLE tb_base_atp 
ADD COLUMN IF NOT EXISTS atp VARCHAR(255),
ADD COLUMN IF NOT EXISTS tipo VARCHAR(50),
ADD COLUMN IF NOT EXISTS atp_resumidas VARCHAR(100),
ADD COLUMN IF NOT EXISTS cc_ct_cidade VARCHAR(255);

-- 3. Atualização de restrições de chaves estrangeiras (Proteção de exclusão)
-- Derrubamos as restrições antigas (RESTRICT)
ALTER TABLE tb_tecnico DROP CONSTRAINT IF EXISTS tb_tecnico_ct_base_fkey;
ALTER TABLE tb_chamado DROP CONSTRAINT IF EXISTS tb_chamado_assistencia_centro_trabalho_fkey;

-- Recriamos com ON DELETE SET NULL
ALTER TABLE tb_tecnico 
ADD CONSTRAINT tb_tecnico_ct_base_fkey 
FOREIGN KEY (ct_base) REFERENCES tb_base_atp(ct_codigo) ON DELETE SET NULL;

ALTER TABLE tb_chamado 
ADD CONSTRAINT tb_chamado_assistencia_centro_trabalho_fkey 
FOREIGN KEY (assistencia_centro_trabalho) REFERENCES tb_base_atp(ct_codigo) ON DELETE SET NULL;
