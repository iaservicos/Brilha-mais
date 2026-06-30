-- =================================================================================
-- V38 - INDEPENDÊNCIA DA TABELA DE CONSUMO DE PEÇAS (PARTS)
-- =================================================================================
-- Esta migration remove a obrigatoriedade de uma peça estar vinculada a um chamado
-- que exista na BaseDL. Isso permite que a planilha de Peças seja 100% autônoma.
-- Também reestrutura a View de Eficiência para buscar os dados diretamente das 
-- colunas recém-adicionadas na tb_consumo_peca.
-- =================================================================================

-- 1. Remoção da Chave Estrangeira (Libertação da tabela)
ALTER TABLE tb_consumo_peca DROP CONSTRAINT IF EXISTS tb_consumo_peca_numero_chamado_fkey;
ALTER TABLE tb_consumo_peca DROP CONSTRAINT IF EXISTS tb_consumo_peca_chamado_fkey;

-- 2. Recriação da View de Eficiência 100% Autônoma (Sem JOIN com BaseDL)
CREATE OR REPLACE VIEW vw_eficiencia_pecas AS
SELECT 
    p.tecnico_nome AS "Técnico",
    p.chamado AS "OS",
    p.equipamento AS "Equipamento",
    p.subgrupo AS "Grupo da Peça",
    p.subgrupo AS "Peça Utilizada",
    1 AS "Qtd"
FROM tb_consumo_peca p
WHERE p.subgrupo IN ('HDD', 'SSD', 'PLM', 'LCD');
