-- =================================================================================
-- V37 - ALINHAMENTO ESTRITO DO SCHEMA COM A PLANILHA HOMOLOGADA (PARTS)
-- =================================================================================

-- 1. Remoção da View Legada para destravar a alteração de colunas da tabela
DROP VIEW IF EXISTS vw_eficiencia_pecas CASCADE;

-- 2. Renomeação Segura da Chave Estrangeira
ALTER TABLE tb_consumo_peca RENAME COLUMN IF EXISTS numero_chamado TO chamado;

-- 3. Inclusão das Colunas Faltantes
ALTER TABLE tb_consumo_peca ADD COLUMN IF NOT EXISTS ct VARCHAR(255);
ALTER TABLE tb_consumo_peca ADD COLUMN IF NOT EXISTS atp VARCHAR(255);
ALTER TABLE tb_consumo_peca ADD COLUMN IF NOT EXISTS ft TIMESTAMP;
ALTER TABLE tb_consumo_peca ADD COLUMN IF NOT EXISTS segmento VARCHAR(255);
ALTER TABLE tb_consumo_peca ADD COLUMN IF NOT EXISTS projeto VARCHAR(255);
ALTER TABLE tb_consumo_peca ADD COLUMN IF NOT EXISTS equipamento VARCHAR(255);
ALTER TABLE tb_consumo_peca ADD COLUMN IF NOT EXISTS sintoma TEXT;
ALTER TABLE tb_consumo_peca ADD COLUMN IF NOT EXISTS tecnico_nome VARCHAR(255);
ALTER TABLE tb_consumo_peca ADD COLUMN IF NOT EXISTS subgrupo VARCHAR(255);
ALTER TABLE tb_consumo_peca ADD COLUMN IF NOT EXISTS acao VARCHAR(255);

-- 4. Limpeza do Lixo (Remoção das colunas legadas do V1)
ALTER TABLE tb_consumo_peca DROP COLUMN IF EXISTS codigo_peca;
ALTER TABLE tb_consumo_peca DROP COLUMN IF EXISTS descricao_peca;
ALTER TABLE tb_consumo_peca DROP COLUMN IF EXISTS grupo_mercadoria;
ALTER TABLE tb_consumo_peca DROP COLUMN IF EXISTS quantidade;
ALTER TABLE tb_consumo_peca DROP COLUMN IF EXISTS texto_encerrado;

-- 5. Recriação da View de Eficiência (Atualizada)
CREATE OR REPLACE VIEW vw_eficiencia_pecas AS
SELECT 
    t.nome_completo AS "Técnico",
    c.chamado AS "OS",
    c.equipamento AS "Equipamento",
    p.subgrupo AS "Grupo da Peça",
    p.subgrupo AS "Peça Utilizada",
    1 AS "Qtd"
FROM tb_tecnico t
JOIN tb_chamado c ON t.id_tecnico = c.id_tecnico
JOIN tb_consumo_peca p ON c.chamado = p.chamado
WHERE p.subgrupo IN ('HDD', 'SSD', 'PLM', 'LCD');
