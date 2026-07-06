-- V52__Populate_Multi_Bases.sql
-- Popula a tabela tb_tecnico_base baseado nos atendimentos (baseDL-Maio.xlsx)

DO $$
DECLARE
    v_id_tecnico INTEGER;
BEGIN
    -- Técnico: LEONARDO FRANCISCO NEVES DA SILVA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LEONARDO FRANCISCO NEVES DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DIEGO SANTANA NEGRAES BARBOZA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DIEGO SANTANA NEGRAES BARBOZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GUSTAVO GUIMARAES COSTA SILVA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GUSTAVO GUIMARAES COSTA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: BRUNO FERNANDES DE FREITAS, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('BRUNO FERNANDES DE FREITAS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GABRIEL DE SOUZA NASCIMENTO, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GABRIEL DE SOUZA NASCIMENTO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JOSE HENRIQUE DA SILVA RAMOS, Base: 89007090
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JOSE HENRIQUE DA SILVA RAMOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007090') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RODRIGO RODRIGUES ALVES, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RODRIGO RODRIGUES ALVES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GUILHERME YUZO MIYASIRO UEHARA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GUILHERME YUZO MIYASIRO UEHARA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GABRIEL JUNQUEIRA LEITE, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GABRIEL JUNQUEIRA LEITE')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FERNANDO ALVES GALVAO, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FERNANDO ALVES GALVAO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: BIANCA CRISTINA GOMES DA SILVA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('BIANCA CRISTINA GOMES DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RICARDO VERONEZZI, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RICARDO VERONEZZI')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JEFFERSON EDUARDO MOREIRA DA SILVA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JEFFERSON EDUARDO MOREIRA DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: VANDEBERGER EUSTAQUILINO PEREIRA DE SOUZA, Base: 89009100
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('VANDEBERGER EUSTAQUILINO PEREIRA DE SOUZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009100') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: CLEBER BORGES SOARES, Base: 8788600
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('CLEBER BORGES SOARES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788600') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FILIPI DE ALMEIDA MAMONI, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FILIPI DE ALMEIDA MAMONI')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FERNANDO VIEIRA ALMEIDA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FERNANDO VIEIRA ALMEIDA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ROBERTO ALESSANDRO ALVES FERREIRA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ROBERTO ALESSANDRO ALVES FERREIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCIO ANDRÉ RODRIGUES SOUZA, Base: 89007090
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCIO ANDRÉ RODRIGUES SOUZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007090') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUCAS EVANGELISTA AUGUSTO, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUCAS EVANGELISTA AUGUSTO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DAVID BEZERRA DOS SANTOS, Base: 8788711
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DAVID BEZERRA DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788711') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCELO PEDRO DE OLIVEIRA PONTES, Base: 89001540
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCELO PEDRO DE OLIVEIRA PONTES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001540') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FILIPE DE LIMA NUNES, Base: 7812231
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FILIPE DE LIMA NUNES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7812231') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JULIANA LIMA DA COSTA, Base: 8789471
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JULIANA LIMA DA COSTA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8789471') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ROBERT CRAVEIRO CASTELO BRANCO NASCIMENTO, Base: 7975861
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ROBERT CRAVEIRO CASTELO BRANCO NASCIMENTO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7975861') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: CHARLES PEREIRA DANTAS, Base: 89009100
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('CHARLES PEREIRA DANTAS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009100') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DANIEL DA SILVA ANDRADE, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DANIEL DA SILVA ANDRADE')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WASHINGTON LUIZ PERTUSSATI, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WASHINGTON LUIZ PERTUSSATI')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LINCONN ALVES LIMA, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LINCONN ALVES LIMA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EMERSON ANJOS PASSOS, Base: 89001760
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EMERSON ANJOS PASSOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001760') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DANIEL ANTONIO SILVA OLIVEIRA, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DANIEL ANTONIO SILVA OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCOS POTROS GUILARDUCCI, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCOS POTROS GUILARDUCCI')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: AMAURY DE FREITAS GOMES, Base: 2791005
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('AMAURY DE FREITAS GOMES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791005') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUIZ CLAUDIO DE OLIVEIRA LESSA, Base: 89009160
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUIZ CLAUDIO DE OLIVEIRA LESSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009160') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MUNIZ ALBINO DA SILVA FILHO, Base: 89009160
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MUNIZ ALBINO DA SILVA FILHO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009160') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ALISSON MATOS DOS SANTOS, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ALISSON MATOS DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DIGIDADOS INFORMATICA, Base: 2736001
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DIGIDADOS INFORMATICA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2736001') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: THIAGO SOEIRO CORDEIRO DE SOUZA, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('THIAGO SOEIRO CORDEIRO DE SOUZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EDSON ANTONIO DA SILVA DIAS, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EDSON ANTONIO DA SILVA DIAS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCELO DIAS, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCELO DIAS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCOS PAULO SUNTO MARTINS, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCOS PAULO SUNTO MARTINS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ADEMIR PEREIRA DA SILVA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ADEMIR PEREIRA DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCO ANTÔNIO FERNANDES, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCO ANTÔNIO FERNANDES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FELIPE FRANCA DOS SANTOS, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FELIPE FRANCA DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUIS FERNANDO GAZOLA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUIS FERNANDO GAZOLA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ANDRE PANIZZA DOS SANTOS, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ANDRE PANIZZA DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARINA ZORZELLI, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARINA ZORZELLI')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GABRIEL RENNAN DIAS PEREIRA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GABRIEL RENNAN DIAS PEREIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JEFERSON ARTUR VULCANIS, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JEFERSON ARTUR VULCANIS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: STEFANY DIAS ROSSI, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('STEFANY DIAS ROSSI')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PABLO MARCELO CLEMENTE DA SILVA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PABLO MARCELO CLEMENTE DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: VICTOR RYAN ZAGO LUJAN, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('VICTOR RYAN ZAGO LUJAN')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ANTONIO FAGNER BASTOS DE SOUZA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ANTONIO FAGNER BASTOS DE SOUZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUCAS DA SILVA FEITOSA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUCAS DA SILVA FEITOSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RODRIGO MARAVIGLIA OCCHINI, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RODRIGO MARAVIGLIA OCCHINI')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WILLIAM PAULO DEBIEN ARISIO, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WILLIAM PAULO DEBIEN ARISIO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EDGAR HENRIQUE NERY, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EDGAR HENRIQUE NERY')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DOUGLAS OLIVEIRA SEVERIANO, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DOUGLAS OLIVEIRA SEVERIANO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JOAO CARLOS CASTRO DE LIMA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JOAO CARLOS CASTRO DE LIMA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: CAIO SCARABEL FERREIRA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('CAIO SCARABEL FERREIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MICHEL NEVES LOBO, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MICHEL NEVES LOBO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RAFAEL ALVES GUIMARAES, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RAFAEL ALVES GUIMARAES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RICARDO ROCHA DE SOUZA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RICARDO ROCHA DE SOUZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: IZEQUIEL ISRAELITO DA SILVA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('IZEQUIEL ISRAELITO DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MATEUS FORTUNATO XAVIER, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MATEUS FORTUNATO XAVIER')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ROGERIO ARISTIDES DOS SANTOS, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ROGERIO ARISTIDES DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GUILHERME DE CAMARGO TONETTO DOS REIS, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GUILHERME DE CAMARGO TONETTO DOS REIS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: THIAGO REINALDO RODRIGUES, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('THIAGO REINALDO RODRIGUES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCELO LADI DE LIMA, Base: 8789471
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCELO LADI DE LIMA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8789471') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JULIO CESAR VILLAMAYOR, Base: 89002040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JULIO CESAR VILLAMAYOR')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: IGOR VIEIRA MENDES LUZ, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('IGOR VIEIRA MENDES LUZ')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EMERSON FRANCA DE SOUZA, Base: 89009670
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EMERSON FRANCA DE SOUZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009670') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DHIONE PABULO ALVES DOS SANTOS, Base: 89001910
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DHIONE PABULO ALVES DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001910') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: HUGO LEONARDO DA SILVA RODRIGUES, Base: 8789471
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('HUGO LEONARDO DA SILVA RODRIGUES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8789471') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUCAS FERREIRA TOLENTINO, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUCAS FERREIRA TOLENTINO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: VAGNER VIDAL, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('VAGNER VIDAL')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LEONE HENRIQUE DA SILVA SANTOS, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LEONE HENRIQUE DA SILVA SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUCAS DE OLIVEIRA TEIXEIRA, Base: 2791005
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUCAS DE OLIVEIRA TEIXEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791005') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JADSON FERREIRA NEVES, Base: 89007090
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JADSON FERREIRA NEVES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007090') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EDILSON CARLOS DE SA NEVES, Base: 89007090
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EDILSON CARLOS DE SA NEVES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007090') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GABRIEL HENRIQUE MOURA DOS SANTOS, Base: 89002040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GABRIEL HENRIQUE MOURA DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LEDSON DOS REIS VILELA MISAEL, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LEDSON DOS REIS VILELA MISAEL')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ARNILDO KAMIEN, Base: 2791005
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ARNILDO KAMIEN')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791005') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: NOEL OLIVEIRA FERREIRA JUNIOR, Base: 8788160
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('NOEL OLIVEIRA FERREIRA JUNIOR')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788160') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: SERGIO HENRIQUE BRAGA RIBEIRO, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('SERGIO HENRIQUE BRAGA RIBEIRO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RAIMUNDO NAZARENO DA SILVA NAVARRO, Base: 89001911
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RAIMUNDO NAZARENO DA SILVA NAVARRO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001911') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JOELSON PEREIRA DA SILVA, Base: 89007090
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JOELSON PEREIRA DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007090') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JOHNSON PESSOA SILVA, Base: 89007090
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JOHNSON PESSOA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007090') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JEFFERSON LUIS CAMPELO DA COSTA, Base: 89009120
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JEFFERSON LUIS CAMPELO DA COSTA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009120') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCO ANTONIO SILVA VIEIRA, Base: 7975861
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCO ANTONIO SILVA VIEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7975861') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: KEVIN AGUIAR DOS SANTOS, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('KEVIN AGUIAR DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCIO HENRIQUE DOS SANTOS CAPUANI, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCIO HENRIQUE DOS SANTOS CAPUANI')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EVANDRO LUIZ DA SILVA, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EVANDRO LUIZ DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ALEXANDRE ARAUJO DOS SANTOS, Base: 8788160
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ALEXANDRE ARAUJO DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788160') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUCIANO DIAS DA SILVA, Base: 2791005
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUCIANO DIAS DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791005') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: HAMILTON ALEXANDRINO DOS SANTOS, Base: 2791005
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('HAMILTON ALEXANDRINO DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791005') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PEDRO HENRIQUE CHAGAS VIANA, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PEDRO HENRIQUE CHAGAS VIANA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RICARDO ALEXANDRE DA SILVA SCHIMIDT, Base: 8789471
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RICARDO ALEXANDRE DA SILVA SCHIMIDT')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8789471') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: BRUNO MAJORES RELA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('BRUNO MAJORES RELA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: HERBERT DE ALENCAR GUAREZI, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('HERBERT DE ALENCAR GUAREZI')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ROSÉLIO JANTARA, Base: 2791005
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ROSÉLIO JANTARA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791005') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GLEDSON AUGUSTO SANTOS SILVA, Base: 8788160
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GLEDSON AUGUSTO SANTOS SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788160') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: IRAN NABUCO ALVES DE ASSIS, Base: 8788600
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('IRAN NABUCO ALVES DE ASSIS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788600') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FAGNER MARQUES DA SILVA, Base: 8788711
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FAGNER MARQUES DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788711') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DIEGO DIAS FERREIRA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DIEGO DIAS FERREIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PAULO HENRIQUE SOUZA COSTA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PAULO HENRIQUE SOUZA COSTA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LEONARDO DOS SANTOS, Base: 89009670
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LEONARDO DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009670') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WESLEY MACHADO DA SILVA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WESLEY MACHADO DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EDUARDO LUIZ DE OLIVEIRA DIAS, Base: 89007090
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EDUARDO LUIZ DE OLIVEIRA DIAS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007090') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: Villatech, Base: 89002040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('Villatech')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GUILHERME LOPES SOARES, Base: 7004721
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GUILHERME LOPES SOARES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004721') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: BRUNO GOMES KRAETZIG, Base: 89009670
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('BRUNO GOMES KRAETZIG')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009670') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: AUDISIO BEZERRA DO NASCIMENTO JUNIOR, Base: 8788711
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('AUDISIO BEZERRA DO NASCIMENTO JUNIOR')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788711') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ÍTALO VILANOVA BANDEIRA, Base: 89001760
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ÍTALO VILANOVA BANDEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001760') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCELO DE SOUZA MACHADO, Base: 2791005
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCELO DE SOUZA MACHADO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791005') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUIS JACARANDA, Base: 89001910
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUIS JACARANDA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001910') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EDUARDO LOPES TEIXEIRA, Base: 2736001
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EDUARDO LOPES TEIXEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2736001') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUCAS MENDES D SILVA, Base: 8788600
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUCAS MENDES D SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788600') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ITALO MATHEUS LIMA MARTINS, Base: 8800690
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ITALO MATHEUS LIMA MARTINS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8800690') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCELO PEREIRA ROSA, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCELO PEREIRA ROSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DANIEL LUIZ TAVARES, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DANIEL LUIZ TAVARES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WILSON JOSE DE SANTANA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WILSON JOSE DE SANTANA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUISA DIAS SPIRITO, Base: 8788160
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUISA DIAS SPIRITO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788160') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: CLEITON ARAUJO SOUSA, Base: 8788160
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('CLEITON ARAUJO SOUSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788160') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ROBSON DA SILVA CASTRO, Base: 8789471
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ROBSON DA SILVA CASTRO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8789471') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCIO DA SILVA EDUARDO, Base: 8789471
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCIO DA SILVA EDUARDO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8789471') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JAKELINE MEYRE DE CASTRO, Base: 89009120
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JAKELINE MEYRE DE CASTRO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009120') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ONYALAN SILVA ALMEIDA, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ONYALAN SILVA ALMEIDA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ANDRE ANTONIO MENINGHIN ALVES, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ANDRE ANTONIO MENINGHIN ALVES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JAFHERSON KALLIU DE MATOS OLIVEIRA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JAFHERSON KALLIU DE MATOS OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JOAO PAULO BASTOS, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JOAO PAULO BASTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JACIANO SEBASTIAO DE OLIVEIRA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JACIANO SEBASTIAO DE OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LEONARDO DEMETRIO DA FONSECA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LEONARDO DEMETRIO DA FONSECA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RODRIGO PINHEIRO DE AZEVEDO, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RODRIGO PINHEIRO DE AZEVEDO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: THOMAZ EDER DE SOUZA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('THOMAZ EDER DE SOUZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FERNANDO CAMPOS SOUZA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FERNANDO CAMPOS SOUZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: VAGNER DE SOUZA BARBOSA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('VAGNER DE SOUZA BARBOSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PEDRO HENRIQUE DE OLIVEIRA, Base: 7004721
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PEDRO HENRIQUE DE OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004721') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GUSTAVO PEREIRA DE ANDRADE, Base: 7004721
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GUSTAVO PEREIRA DE ANDRADE')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004721') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MIGUELL NICKOLLAS BITTENCOURT ROCHA, Base: 89000650
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MIGUELL NICKOLLAS BITTENCOURT ROCHA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89000650') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ANTONIO DOS SANTOS SOARES, Base: 7004721
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ANTONIO DOS SANTOS SOARES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004721') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ELIAS RODRIGUES BOAVENTURA CUNHA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ELIAS RODRIGUES BOAVENTURA CUNHA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GUILHERME DE OLIVEIRA SOUZA, Base: 2791005
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GUILHERME DE OLIVEIRA SOUZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791005') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: CAROLINA VELASCO THOMAZ, Base: 89001540
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('CAROLINA VELASCO THOMAZ')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001540') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ANTONIO EDUARDO MARCOS MAIA, Base: 8788711
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ANTONIO EDUARDO MARCOS MAIA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788711') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ANTONIO ENEAS BARROS DE FIGUEIREDO, Base: 89007091
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ANTONIO ENEAS BARROS DE FIGUEIREDO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007091') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GUILHERME DE MATOS PAIVA, Base: 7812231
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GUILHERME DE MATOS PAIVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7812231') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: VITOR RAPHAEL NELSON SANTOS, Base: 7812231
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('VITOR RAPHAEL NELSON SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7812231') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WANDERSON DOS SANTOS GONCALVES, Base: 89009511
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WANDERSON DOS SANTOS GONCALVES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009511') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GILMAR VIEIRA ARAÚJO, Base: 89001140
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GILMAR VIEIRA ARAÚJO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001140') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DIOGO VICTOR DO REGO VAZ, Base: 89000651
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DIOGO VICTOR DO REGO VAZ')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89000651') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ADRIANO ATHAYDE PEDROSA, Base: 89007090
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ADRIANO ATHAYDE PEDROSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007090') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RODRIGO NARDI MORAIS, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RODRIGO NARDI MORAIS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PEDRO MARTINIANO PEREIRA, Base: 89009100
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PEDRO MARTINIANO PEREIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009100') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GILMAR VIEIRA ARAUJO, Base: 89001140
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GILMAR VIEIRA ARAUJO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001140') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GUSTAVO GALDINO MOREIRA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GUSTAVO GALDINO MOREIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUCAS MENDES DUARTE SILVA, Base: 8788600
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUCAS MENDES DUARTE SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788600') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ANTÔNIO CARLOS LEITE DA SILVA, Base: 8789471
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ANTÔNIO CARLOS LEITE DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8789471') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DINO MUTTI FORNIELIS LOPES, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DINO MUTTI FORNIELIS LOPES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WAGNER PEREIRA ALVES, Base: 89009511
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WAGNER PEREIRA ALVES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009511') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUIZ FELIPE COELHO DE OLIVEIRA, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUIZ FELIPE COELHO DE OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DANIEL LIMA CRUZ DE OLIVEIRA, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DANIEL LIMA CRUZ DE OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCIO LUIS PEREIRA DOS SANTOS, Base: 8789471
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCIO LUIS PEREIRA DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8789471') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: CM DIGITAL - (GOIANIA), Base: 8788600
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('CM DIGITAL - (GOIANIA)')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788600') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: IAGNER RUVIARO CARDOSO, Base: 7812231
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('IAGNER RUVIARO CARDOSO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7812231') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: KAREM MACELA ALVES DA ROCHA, Base: 7004721
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('KAREM MACELA ALVES DA ROCHA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004721') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WENDEL FABIO CARDOSO BANDEIRA, Base: 8800690
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WENDEL FABIO CARDOSO BANDEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8800690') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCO PACHECO, Base: 7004721
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCO PACHECO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004721') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DENNY FERREIRA TAVARES, Base: 2736001
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DENNY FERREIRA TAVARES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2736001') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUIZ FELIPE PEDROSO DA SILVA, Base: 7812231
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUIZ FELIPE PEDROSO DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7812231') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FERNANDO CESAR PIRES CARDOSO, Base: 7975861
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FERNANDO CESAR PIRES CARDOSO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7975861') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RUBENS CARLOS GONÇALVES FILHO, Base: 8788160
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RUBENS CARLOS GONÇALVES FILHO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788160') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ADRIANO FERREIRA BEZERRA, Base: 89009670
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ADRIANO FERREIRA BEZERRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009670') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: YURI NOGUEIRA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('YURI NOGUEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EVERSON DA SILVA SOARES, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EVERSON DA SILVA SOARES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RICARDO APARECIDO BARRETO, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RICARDO APARECIDO BARRETO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FABIANO FERREIRA DO AMARAL, Base: 8789471
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FABIANO FERREIRA DO AMARAL')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8789471') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JEAN FRANCISCO MIGUEL DE ANDRADE, Base: 2791005
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JEAN FRANCISCO MIGUEL DE ANDRADE')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791005') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DIEGO DO ROSARIO ARAUJO, Base: 8788160
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DIEGO DO ROSARIO ARAUJO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788160') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JOÃO HENRIQUE DE ANDRADE FIDELIS, Base: 8789471
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JOÃO HENRIQUE DE ANDRADE FIDELIS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8789471') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WASHIGTON LOPES, Base: 89000650
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WASHIGTON LOPES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89000650') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: VINICIUS DACIO DA SILVA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('VINICIUS DACIO DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MATEC - (SAO LUIS), Base: 8800690
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MATEC - (SAO LUIS)')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8800690') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ANA MARIA ESPINOZA GRANCE, Base: 89002040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ANA MARIA ESPINOZA GRANCE')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WILLIAM LUCAS DE OLIVEIRA, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WILLIAM LUCAS DE OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RODRIGO BARROS DA SILVA, Base: 7004721
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RODRIGO BARROS DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004721') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: NILTON CESAR GOMES, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('NILTON CESAR GOMES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ROBERTO IDALGO ORTEGAS, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ROBERTO IDALGO ORTEGAS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PEDRO GABRIEL RODRIGUES DE LIMA, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PEDRO GABRIEL RODRIGUES DE LIMA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FELIPE DE ANAJAZ MARTINS NEIVA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FELIPE DE ANAJAZ MARTINS NEIVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GUILHERME DE ALMEIDA NOGUEIRA, Base: 7004721
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GUILHERME DE ALMEIDA NOGUEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004721') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: HALLAN EDUARDO SILVA LEME, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('HALLAN EDUARDO SILVA LEME')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EDNILSON RAIMUNDO PINA CUNHA, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EDNILSON RAIMUNDO PINA CUNHA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JEFERSON MIOTO, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JEFERSON MIOTO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUKIS BARROS, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUKIS BARROS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GEOVANE NOLASCO BIZERRA, Base: 89001910
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GEOVANE NOLASCO BIZERRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001910') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCUS VINICIUS COSTA DA SILVA, Base: 7004722
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCUS VINICIUS COSTA DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004722') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JULIO CARLOS PIRES DE SOUZA, Base: 7004722
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JULIO CARLOS PIRES DE SOUZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004722') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ADRIANO ATHAYDE PEDROSA, Base: 89009100
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ADRIANO ATHAYDE PEDROSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009100') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: CHARLES PEREIRA DANTAS, Base: 89009160
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('CHARLES PEREIRA DANTAS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009160') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DIEGO LEONARDO DE OLIVEIRA, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DIEGO LEONARDO DE OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ALLAN DE ALMEIDA ALENCAR, Base: 7004722
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ALLAN DE ALMEIDA ALENCAR')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004722') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCIO POZADA MILGAREJO, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCIO POZADA MILGAREJO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ADNILTON MARTINS DE SOUSA, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ADNILTON MARTINS DE SOUSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: N1 POSITIVO, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('N1 POSITIVO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RAPHAEL ALBRECHETE SIQUEIRA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RAPHAEL ALBRECHETE SIQUEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCUS VINICIUS WANGUESTEL DE CARVALHO CAMPO, Base: 89002060
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCUS VINICIUS WANGUESTEL DE CARVALHO CAMPO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002060') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PAULO VICTOR ANDRADE MOTA VAZ, Base: 7004722
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PAULO VICTOR ANDRADE MOTA VAZ')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004722') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ALEXSANDRO NUNES DOS SANTOS, Base: 89002030
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ALEXSANDRO NUNES DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002030') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUCAS LEAO JANCEN, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUCAS LEAO JANCEN')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FELIPE BORNHOLDT, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FELIPE BORNHOLDT')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GABRIEL GIDEÃO SOUZA PLEUTIN, Base: 89006050
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GABRIEL GIDEÃO SOUZA PLEUTIN')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89006050') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MAIKON DE OLIVEIRA, Base: 89002060
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MAIKON DE OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002060') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PATRYCK MATIAS MARTINS, Base: 89002060
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PATRYCK MATIAS MARTINS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002060') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ADEMARIO DO CARMO SILVA, Base: 89002060
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ADEMARIO DO CARMO SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002060') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ANTONIO CARLOS SANTANNA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ANTONIO CARLOS SANTANNA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: N1 POSITIVO, Base: 89001750
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('N1 POSITIVO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001750') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ALEXANDRE DO NASCIMENTO FOGAÇA, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ALEXANDRE DO NASCIMENTO FOGAÇA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RENAN GOMES PAIVA, Base: 89006050
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RENAN GOMES PAIVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89006050') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MAXIMILIANO ANTUNES DOS SANTOS, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MAXIMILIANO ANTUNES DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: YURI MATHEUS DA SILVA SOARES, Base: 89009670
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('YURI MATHEUS DA SILVA SOARES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009670') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ROBERT ADALBERTO WALDEMAR MACHADO, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ROBERT ADALBERTO WALDEMAR MACHADO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PAULO VICTOR ANDRADE MOTA VAZ, Base: 8788601
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PAULO VICTOR ANDRADE MOTA VAZ')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788601') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ADRIANO ATHAYDE PEDROSA, Base: 8788160
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ADRIANO ATHAYDE PEDROSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788160') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ADRIANO ATHAYDE PEDROSA, Base: 89007091
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ADRIANO ATHAYDE PEDROSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007091') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: VICTOR TAVARES DA SILVA, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('VICTOR TAVARES DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: CRISTIANO BARRETO CASSALI, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('CRISTIANO BARRETO CASSALI')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ALESSANDRO DETRANO DA SILVA, Base: 8789471
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ALESSANDRO DETRANO DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8789471') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: REGIS ADRIANO DA ROSA, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('REGIS ADRIANO DA ROSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WEVERTON HITLEY XAVIER DE SOUS?, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WEVERTON HITLEY XAVIER DE SOUS?')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JOSE RIBAMAR PEREIRA DE CARVALHO FILHO, Base: 89001750
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JOSE RIBAMAR PEREIRA DE CARVALHO FILHO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001750') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EVERALDO ARAUJO DE MESQUITA, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EVERALDO ARAUJO DE MESQUITA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: N1 POSITIVO, Base: 89006050
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('N1 POSITIVO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89006050') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUCAS WENDERSON DE SANDES PEREIRA, Base: 8788601
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUCAS WENDERSON DE SANDES PEREIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788601') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: Alessandra neves cardoso oliveira, Base: 89001940
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('Alessandra neves cardoso oliveira')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001940') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FABRICIO GOMES DE SOUSA, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FABRICIO GOMES DE SOUSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCELO DA ROCHA SILVA, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCELO DA ROCHA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MAIK MARTINS DE OLIVEIRA, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MAIK MARTINS DE OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GLEYSON STEFANE SOUSA PINTO, Base: 89001750
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GLEYSON STEFANE SOUSA PINTO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001750') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUIZ ARAÚJO RODRIGUES, Base: 89001940
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUIZ ARAÚJO RODRIGUES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001940') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LEMIRO CRUVINEL NETO, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LEMIRO CRUVINEL NETO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ANTONIO CARLOS DORNELES DA SILVA FILHO, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ANTONIO CARLOS DORNELES DA SILVA FILHO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GUILHERME HENRIQUE MARQUES BORGES, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GUILHERME HENRIQUE MARQUES BORGES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FELIX DANIEL MARTINEZ MAITA, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FELIX DANIEL MARTINEZ MAITA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: THIAGO ARAUJO DE FARIA, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('THIAGO ARAUJO DE FARIA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: CAIO MIGUEL VALES DOS SANTOS, Base: 8800690
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('CAIO MIGUEL VALES DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8800690') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RAFAEL BRANDT, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RAFAEL BRANDT')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MAGNON GRUCCI MAZUTTI, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MAGNON GRUCCI MAZUTTI')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ALEXANDRE DO NASCIMENTO FOGAÇA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ALEXANDRE DO NASCIMENTO FOGAÇA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ROBERTO CARLOS STOCCO JUNIOR, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ROBERTO CARLOS STOCCO JUNIOR')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EMIVAN SOUZA MIRANDA, Base: 8800920
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EMIVAN SOUZA MIRANDA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8800920') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: IGOR GUILHERME LEAL ALVES, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('IGOR GUILHERME LEAL ALVES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RHAYLLER RHANIER ROSA DA SILVA, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RHAYLLER RHANIER ROSA DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JAILSON DOS SANTOS, Base: 2791005
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JAILSON DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791005') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: Fábio Gomes dos santos, Base: 7975861
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('Fábio Gomes dos santos')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7975861') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: OYAMA TACARAMBI GOMIDE PINTO, Base: 8788600
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('OYAMA TACARAMBI GOMIDE PINTO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788600') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JAYME FUMAGALLI PRADO E SOUSA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JAYME FUMAGALLI PRADO E SOUSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LEONARDO SILVEIRA DE SOUSA, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LEONARDO SILVEIRA DE SOUSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ALAN KARDEC RODRIGUES DE MELO FILHO, Base: 8788601
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ALAN KARDEC RODRIGUES DE MELO FILHO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788601') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WIDNEY NASCIMENTO SILVA, Base: 89007090
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WIDNEY NASCIMENTO SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007090') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JOSÉ CARLOS LIMA DE ARAÚJO, Base: 89001750
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JOSÉ CARLOS LIMA DE ARAÚJO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001750') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: N1 POSITIVO, Base: 89002030
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('N1 POSITIVO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002030') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: VITOR HUGO FERNANDES DOS SANTOS, Base: 8788160
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('VITOR HUGO FERNANDES DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788160') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EDSON DE SOUZA SANTOS, Base: 89001940
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EDSON DE SOUZA SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001940') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: Alessandra neves cardoso oliveira, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('Alessandra neves cardoso oliveira')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RAFAEL CORREIA RIBEIRO FERREIRA DE MIRANDA, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RAFAEL CORREIA RIBEIRO FERREIRA DE MIRANDA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LEANDRO HENRIQUE DA CUNHA, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LEANDRO HENRIQUE DA CUNHA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RAFAEL JESUS GARCIA TREMONT, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RAFAEL JESUS GARCIA TREMONT')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: IDEMAR FERRO SILVA, Base: 89002030
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('IDEMAR FERRO SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002030') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FELIPE PACHECO FERREIRA DA SILVA, Base: 89009420
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FELIPE PACHECO FERREIRA DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009420') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GABRIEL FERNANDES DUTRA, Base: 7004721
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GABRIEL FERNANDES DUTRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004721') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: Emmanuelly ribeiro de oliveira, Base: 89001540
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('Emmanuelly ribeiro de oliveira')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001540') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EDGAR, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EDGAR')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WESLEY GONÇALVES DE OLIVEIRA DA SILVA, Base: 2791005
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WESLEY GONÇALVES DE OLIVEIRA DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791005') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GUILHERME LIMA SA, Base: 8788600
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GUILHERME LIMA SA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788600') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: BRUNO RIBEIRO DE OLIVEIRA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('BRUNO RIBEIRO DE OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RAFAEL DA SILVA NASCIMENTO, Base: 89009120
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RAFAEL DA SILVA NASCIMENTO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009120') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: Alessandra neves cardoso oliveira, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('Alessandra neves cardoso oliveira')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FERNANDO JOCELITO MACHADO GARCIA, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FERNANDO JOCELITO MACHADO GARCIA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: VICTOR STOLZE GOMES, Base: 89002030
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('VICTOR STOLZE GOMES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002030') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: CAYO JONY RODRIGUES SAMPAIO, Base: 89001750
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('CAYO JONY RODRIGUES SAMPAIO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001750') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JORGE HENRIQUE FERNANDES NUNES, Base: 89007090
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JORGE HENRIQUE FERNANDES NUNES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007090') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARIA PAZ DOS SANTOS, Base: 89002040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARIA PAZ DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FELIPE MORAES MENDES, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FELIPE MORAES MENDES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: BRUNO DE ANHAIA MILER, Base: 89009670
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('BRUNO DE ANHAIA MILER')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009670') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WILMAR MENDES DA SILVA, Base: 8788601
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WILMAR MENDES DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788601') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ALAN KARDEC RODRIGUES DE MELO FILHO, Base: 2791005
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ALAN KARDEC RODRIGUES DE MELO FILHO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791005') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RAIMUNDO WAGNER  CARMO ALMEIDA, Base: 89000270
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RAIMUNDO WAGNER  CARMO ALMEIDA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89000270') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ARNILDO KAMIEN JUNIOR, Base: 2791005
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ARNILDO KAMIEN JUNIOR')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791005') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUIZ RICARDO VIANA DE MELO FILHO, Base: 89007090
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUIZ RICARDO VIANA DE MELO FILHO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007090') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RAQUEL DE OLIVEIRA MORATO, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RAQUEL DE OLIVEIRA MORATO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUIZ HENRIQUE VILABOIM DE OLIVEIRA, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUIZ HENRIQUE VILABOIM DE OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: N1 POSITIVO, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('N1 POSITIVO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PAULO SERGIO SOUSA NISTI, Base: 8788711
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PAULO SERGIO SOUSA NISTI')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788711') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: NORTON JOSSEL STEFFENS, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('NORTON JOSSEL STEFFENS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JUAN AMERICO DOS SANTOS SILVA, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JUAN AMERICO DOS SANTOS SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DANIEL MELO COSTA, Base: 8788160
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DANIEL MELO COSTA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788160') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: THYAGO FERREIRA VALE DE LIMA, Base: 89001750
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('THYAGO FERREIRA VALE DE LIMA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001750') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: HUGO ALVES NUNES, Base: 8788600
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('HUGO ALVES NUNES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788600') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ELETRONICA PRIME - (ARACAJU), Base: 89001760
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ELETRONICA PRIME - (ARACAJU)')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001760') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: SAMILE SILVESTRIN, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('SAMILE SILVESTRIN')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RAPHAEL ALBRECHETE SIQUEIRA, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RAPHAEL ALBRECHETE SIQUEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: NEMUEL KESSLER SOUZA OLIVEIRA, Base: 89001940
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('NEMUEL KESSLER SOUZA OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001940') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ANDERSON CUNHA NASCIMENTO, Base: 89001750
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ANDERSON CUNHA NASCIMENTO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001750') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: CARLOS HENRIQUE BATISTA DE OLIVEIRA, Base: 89001750
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('CARLOS HENRIQUE BATISTA DE OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001750') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JOAO PEDRO FERREIRA DE SOUZA, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JOAO PEDRO FERREIRA DE SOUZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GABRIEL BATISTA SOIER, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GABRIEL BATISTA SOIER')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ROSELMO DREHMER, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ROSELMO DREHMER')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ITALO RAFAEL PALMERIM ALMEIDA DE JESUS, Base: 2736001
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ITALO RAFAEL PALMERIM ALMEIDA DE JESUS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2736001') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RAFAEL RIBEIRO DALLA ROSA, Base: 7004722
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RAFAEL RIBEIRO DALLA ROSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004722') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: CARLOS HENRIQUE VENDRAMIN PIPPUS, Base: 89006050
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('CARLOS HENRIQUE VENDRAMIN PIPPUS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89006050') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: CAIO BERSANO RODRIGUES SOUSA, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('CAIO BERSANO RODRIGUES SOUSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: N1 POSITIVO, Base: 89002060
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('N1 POSITIVO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002060') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ROGERIO DE OLIVEIRA RIBEIRO, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ROGERIO DE OLIVEIRA RIBEIRO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: N1 POSITIVO, Base: 89001940
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('N1 POSITIVO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001940') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RICARDO OLIVEIRA LIMA, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RICARDO OLIVEIRA LIMA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ERIK MAGALHAES DE SOUZA, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ERIK MAGALHAES DE SOUZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DEUSDETE PEREIRA DA SILVA FILHO, Base: 89001750
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DEUSDETE PEREIRA DA SILVA FILHO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001750') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PEDRO ARTHUR FERREIRA ARANDA DE SOUZA, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PEDRO ARTHUR FERREIRA ARANDA DE SOUZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JULIO CARLOS PIRES DE SOUZA, Base: 8788601
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JULIO CARLOS PIRES DE SOUZA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788601') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: AUDISIO BEZERRA DO NASCIMENTO JUNIOR, Base: 89000651
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('AUDISIO BEZERRA DO NASCIMENTO JUNIOR')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89000651') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RODRIGO LACERDA BOTELHO, Base: 89007090
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RODRIGO LACERDA BOTELHO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007090') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LEONARDO DOS SANTOS, Base: 7812231
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LEONARDO DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7812231') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FABIANO LOBO, Base: 89000880
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FABIANO LOBO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89000880') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JOSE GUILHERME DUSI ALVIM JUNIOR, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JOSE GUILHERME DUSI ALVIM JUNIOR')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: SIDNEY DE OLIVEIRA COSTA, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('SIDNEY DE OLIVEIRA COSTA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: IGOR RAMOS BRITES, Base: 89006050
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('IGOR RAMOS BRITES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89006050') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ADRIANO SANTOS MENEZES, Base: 89002030
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ADRIANO SANTOS MENEZES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002030') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ROBSON NEGROMONTE VASCONCELOS, Base: 89007090
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ROBSON NEGROMONTE VASCONCELOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007090') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MAICON RODRIGUES KARSBURG, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MAICON RODRIGUES KARSBURG')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ANDERSON NUNES MACHADO, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ANDERSON NUNES MACHADO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JHORD KENNEDY MARINHO RODRIGUES, Base: 89001750
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JHORD KENNEDY MARINHO RODRIGUES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001750') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JAIRO EDUARDO LOPES LANDIM, Base: 89009511
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JAIRO EDUARDO LOPES LANDIM')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009511') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: Alessandra neves cardoso oliveira, Base: 89002060
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('Alessandra neves cardoso oliveira')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002060') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JAILSON JOAQUIM DE LIMA, Base: 89001750
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JAILSON JOAQUIM DE LIMA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001750') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JOSÉ HENRIQUE DA SILVA RAMOS, Base: 89007090
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JOSÉ HENRIQUE DA SILVA RAMOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89007090') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PAULO VICTOR ANDRADE MOTA VAZ, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PAULO VICTOR ANDRADE MOTA VAZ')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: THIAGO RAMOS ALVES, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('THIAGO RAMOS ALVES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WESLEY SANTOS DE SOUSA, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WESLEY SANTOS DE SOUSA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: BRUNO SANTOS DE LIMA, Base: 89001750
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('BRUNO SANTOS DE LIMA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001750') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JOHNNY ROBERT MARINHO PEREIRA, Base: 89006050
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JOHNNY ROBERT MARINHO PEREIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89006050') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: YGOR LOPES DE ARAÚJO, Base: 8789471
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('YGOR LOPES DE ARAÚJO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8789471') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MAXSUEL BARBOSA GOMES, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MAXSUEL BARBOSA GOMES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUIS CLAUDIO OLIVEIRA PIMENTEL, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUIS CLAUDIO OLIVEIRA PIMENTEL')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RODRIGO RODRIGUES, Base: 2791005
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RODRIGO RODRIGUES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791005') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: WASHINGTON LOPES DA SILVA FILHO, Base: 89000650
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('WASHINGTON LOPES DA SILVA FILHO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89000650') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MIGUEL NICKOLLAS BITTENCOURT ROCHA, Base: 89000650
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MIGUEL NICKOLLAS BITTENCOURT ROCHA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89000650') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MATHEUS GUERREIRO OLIVEIRA, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MATHEUS GUERREIRO OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JOELSON PEREIRA DA SILVA, Base: 8788711
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JOELSON PEREIRA DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788711') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ANTÔNIO CARLOS LEITE DA SILVA, Base: 89001630
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ANTÔNIO CARLOS LEITE DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001630') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RICARDO ROBERTSON DA SILVA CAMPOS, Base: 8788711
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RICARDO ROBERTSON DA SILVA CAMPOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788711') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: THARICK DINIZ MENDES, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('THARICK DINIZ MENDES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RODRIGO RODRIGUES SOARES, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RODRIGO RODRIGUES SOARES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JULIANA LIMA DA COSTA, Base: 89001630
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JULIANA LIMA DA COSTA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001630') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FERNANDO MENESES TEIXEIRA, Base: 89001940
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FERNANDO MENESES TEIXEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001940') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: SAINT CLAIR DE FARIA GOMES ARAUJO, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('SAINT CLAIR DE FARIA GOMES ARAUJO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LUCAS CAVALCANTE QUEIROZ, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LUCAS CAVALCANTE QUEIROZ')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PEDRO ANTÔNIO ALVES DE ANDRADE, Base: 7975861
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PEDRO ANTÔNIO ALVES DE ANDRADE')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7975861') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MATHEUS DUARTE RIBEIRO PAES LEME, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MATHEUS DUARTE RIBEIRO PAES LEME')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: BRUNO CANDIDO DE MORAIS, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('BRUNO CANDIDO DE MORAIS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCIO LUIS PEREIRA DOS SANTOS, Base: 89001630
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCIO LUIS PEREIRA DOS SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001630') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: RICARDO AUGUSTO NEGRETO COSTA, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('RICARDO AUGUSTO NEGRETO COSTA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JERUZA ORTIZ GOULART, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JERUZA ORTIZ GOULART')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCELO DE SOUZA MACHADO, Base: 89009120
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCELO DE SOUZA MACHADO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009120') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ADRIANO LUIZ CHERUBINI POMPEO, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ADRIANO LUIZ CHERUBINI POMPEO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EDER FABRIS, Base: 89002060
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EDER FABRIS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89002060') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JEAN RIBEIRO DE OLIVEIRA, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JEAN RIBEIRO DE OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ROBSON DA SILVA CASTRO, Base: 89001630
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ROBSON DA SILVA CASTRO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001630') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MATHEUS SILVA DE MELO GUERREIRO, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MATHEUS SILVA DE MELO GUERREIRO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: Alessandra neves cardoso oliveira, Base: 89001750
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('Alessandra neves cardoso oliveira')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001750') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: SIMONE DA SILVA SAMORAS, Base: 2791006
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('SIMONE DA SILVA SAMORAS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791006') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: THIAGO VAZ DE OLIVEIRA, Base: 7812231
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('THIAGO VAZ DE OLIVEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7812231') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: LEANDRO MOLIN NOGUEIRA, Base: 2791040
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('LEANDRO MOLIN NOGUEIRA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '2791040') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: JOÃO HENRIQUE DE ANDRADE FIDELIS, Base: 89001630
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('JOÃO HENRIQUE DE ANDRADE FIDELIS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001630') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PABLO AZEVEDO, Base: 89009560
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PABLO AZEVEDO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009560') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: FAGNER MARQUES DA SILVA, Base: 89000940
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('FAGNER MARQUES DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89000940') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCIO DA SILVA EDUARDO, Base: 89001630
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCIO DA SILVA EDUARDO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001630') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MAGNO DE AMORIM GAMA, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MAGNO DE AMORIM GAMA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: DIGITAL PROCESSAMENTO DE DADOS - (SAO LUIS), Base: 89000270
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('DIGITAL PROCESSAMENTO DE DADOS - (SAO LUIS)')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89000270') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: Silvana Cardoso da Silva, Base: 89009420
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('Silvana Cardoso da Silva')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009420') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EXEMPLO DE TÉCNICO DE URNA, Base: 7812231
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EXEMPLO DE TÉCNICO DE URNA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7812231') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: PATRYCK MATIAS MARTINS, Base: 89001700
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('PATRYCK MATIAS MARTINS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001700') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ANTONIO MARCOS DA CONCEIÇÃO SANTOS, Base: 89009120
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ANTONIO MARCOS DA CONCEIÇÃO SANTOS')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009120') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: GUSTAVO PEREIRA DE ANDRADE, Base: 7004722
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('GUSTAVO PEREIRA DE ANDRADE')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004722') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: HUGO LEONARDO DA SILVA RODRIGUES, Base: 89001630
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('HUGO LEONARDO DA SILVA RODRIGUES')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001630') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: MARCOS JUNIOR BARBOSA DA SILVA, Base: 89001940
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('MARCOS JUNIOR BARBOSA DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001940') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: EDNILSON RAIMUNDO PINA CUNHA, Base: 89001940
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('EDNILSON RAIMUNDO PINA CUNHA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001940') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: NÃO DEFINIDO, Base: 7004721
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('NÃO DEFINIDO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '7004721') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: NÃO DEFINIDO, Base: 89009511
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('NÃO DEFINIDO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89009511') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: NÃO DEFINIDO, Base: 89001540
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('NÃO DEFINIDO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001540') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: NÃO DEFINIDO, Base: 89006050
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('NÃO DEFINIDO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89006050') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: ROGERIO FERNANDES DA SILVA, Base: 89001970
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('ROGERIO FERNANDES DA SILVA')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '89001970') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

    -- Técnico: NÃO DEFINIDO, Base: 8788600
    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER(TRIM('NÃO DEFINIDO')) LIMIT 1;
    IF v_id_tecnico IS NOT NULL THEN
        INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo) VALUES (v_id_tecnico, '8788600') ON CONFLICT (id_tecnico, ct_codigo) DO NOTHING;
    END IF;

END $$;