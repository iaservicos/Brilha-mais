-- =================================================================================
-- V31: ATUALIZAÇÃO DA VIEW DE CHAMADOS PARA PRESERVAR HISTÓRICO COM BASES DELETADAS
-- =================================================================================

DROP VIEW IF EXISTS vw_chamados_por_tecnico;

CREATE OR REPLACE VIEW vw_chamados_por_tecnico AS
SELECT 
    t.nome_completo AS "Técnico",
    b.nome_atp AS "Base",
    COUNT(c.chamado) AS "Total de Chamados",
    MIN(c.ft) AS "Primeiro Chamado",
    MAX(c.ft) AS "Último Chamado"
FROM tb_tecnico t
JOIN tb_chamado c ON t.id_tecnico = c.id_tecnico
LEFT JOIN tb_base_atp b ON t.ct_base = b.ct_codigo
GROUP BY t.nome_completo, b.nome_atp;
