-- =================================================================================
-- PROJETO BRILHA MAIS - CONSULTAS DE VALIDAÇÃO E TESTE
-- Rode estas queries no seu pgAdmin para validar os dados importados.
-- =================================================================================

-- ---------------------------------------------------------------------------------
-- TESTE 1: VISÃO GERAL DE CHAMADOS POR TÉCNICO (Volume)
-- Objetivo: Verificar se os chamados estão vinculados corretamente aos técnicos.
-- ---------------------------------------------------------------------------------
SELECT 
    t.nome_completo AS "Técnico",
    b.nome_atp AS "Base",
    COUNT(c.numero_chamado) AS "Total de Chamados",
    MIN(c.data_abertura) AS "Primeiro Chamado",
    MAX(c.data_abertura) AS "Último Chamado"
FROM tb_tecnico t
JOIN tb_chamado c ON t.id_tecnico = c.id_tecnico
JOIN tb_base_atp b ON t.ct_base = b.ct_codigo
GROUP BY t.nome_completo, b.nome_atp
ORDER BY "Total de Chamados" DESC;


-- ---------------------------------------------------------------------------------
-- TESTE 2: CÁLCULO DE SLA POR TÉCNICO (O Gatilho da Campanha)
-- Objetivo: Calcular a % de SLA atingido usando a regra de 3.
-- ---------------------------------------------------------------------------------
SELECT 
    t.nome_completo AS "Técnico",
    COUNT(c.numero_chamado) AS "Total Atendidos",
    SUM(CASE WHEN c.status_sla = 'DENTRO' THEN 1 ELSE 0 END) AS "Dentro do Prazo",
    SUM(CASE WHEN c.status_sla = 'FORA' THEN 1 ELSE 0 END) AS "Fora do Prazo",
    -- Calcula a porcentagem (Multiplica por 100.0 para garantir casas decimais no Postgres)
    ROUND(
        SUM(CASE WHEN c.status_sla = 'DENTRO' THEN 1 ELSE 0 END) * 100.0 / NULLIF(COUNT(c.numero_chamado), 0)
    , 2) AS "% SLA Atingido"
FROM tb_tecnico t
JOIN tb_chamado c ON t.id_tecnico = c.id_tecnico
GROUP BY t.nome_completo
ORDER BY "% SLA Atingido" DESC;


-- ---------------------------------------------------------------------------------
-- TESTE 3: ANÁLISE DE REINCIDÊNCIA (O 2º Gatilho)
-- Objetivo: Descobrir quantos chamados cada técnico teve que retornaram.
-- ---------------------------------------------------------------------------------
SELECT 
    t.nome_completo AS "Técnico",
    COUNT(DISTINCT c.numero_chamado) AS "Total de Chamados Atendidos",
    COUNT(r.id_reincidencia) AS "Qtd Reincidências",
    -- Calcula a % de reincidência (quanto menor, melhor)
    ROUND(
        COUNT(r.id_reincidencia) * 100.0 / NULLIF(COUNT(DISTINCT c.numero_chamado), 0)
    , 2) AS "% Reincidência"
FROM tb_tecnico t
JOIN tb_chamado c ON t.id_tecnico = c.id_tecnico
-- Usamos LEFT JOIN porque nem todo chamado tem reincidência
LEFT JOIN tb_reincidencia r ON c.numero_chamado = r.chamado_novo 
GROUP BY t.nome_completo
ORDER BY "Qtd Reincidências" DESC;


-- ---------------------------------------------------------------------------------
-- TESTE 4: EFICIÊNCIA DE PEÇAS (Foco em HDD, SSD, PLM, LCD)
-- Objetivo: Mapear quais técnicos usaram peças controladas.
-- ---------------------------------------------------------------------------------
SELECT 
    t.nome_completo AS "Técnico",
    c.numero_chamado AS "OS",
    c.equipamento AS "Equipamento",
    p.grupo_mercadoria AS "Grupo da Peça",
    p.descricao_peca AS "Peça Utilizada",
    p.quantidade AS "Qtd"
FROM tb_tecnico t
JOIN tb_chamado c ON t.id_tecnico = c.id_tecnico
JOIN tb_consumo_peca p ON c.numero_chamado = p.numero_chamado
WHERE p.grupo_mercadoria IN ('HDD', 'SSD', 'PLM', 'LCD') -- Filtra apenas as peças da meta
ORDER BY t.nome_completo, c.data_abertura;


-- ---------------------------------------------------------------------------------
-- TESTE 5: SIMULAÇÃO DO RANKING (Leitura do Extrato)
-- Objetivo: Ver o espelho do JSON que vai para o React Native.
-- ---------------------------------------------------------------------------------
SELECT 
    RANK() OVER (ORDER BY a.pontuacao_total DESC) AS "Posição",
    t.nome_completo AS "Técnico",
    a.pontuacao_total AS "Nota Final",
    a.atingimento_sla * 100 AS "% SLA",
    a.pontos_sla AS "Pts SLA",
    a.status_elegibilidade AS "Elegível?",
    a.motivo_inelegibilidade AS "Motivo Inelegibilidade"
FROM tb_apuracao_mensal a
JOIN tb_tecnico t ON a.id_tecnico = t.id_tecnico
WHERE a.mes_ano = '2026-05-01' -- Filtra pelo mês da campanha
ORDER BY a.pontuacao_total DESC;