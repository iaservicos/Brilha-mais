-- V47__Normalize_Hierarchy.sql
-- Normalizacao de Tabelas de Gestao (3NF)

-- 1. Criacao da Tabela de Gerente
CREATE TABLE IF NOT EXISTS tb_gerente (
    id_gerente SERIAL PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE,
    ativo BOOLEAN DEFAULT TRUE
);
-- 2. Criacao da Tabela de Coordenador
CREATE TABLE IF NOT EXISTS tb_coordenador (
    id_coordenador SERIAL PRIMARY KEY,
    id_gerente INT REFERENCES tb_gerente(id_gerente) ON DELETE SET NULL,
    nome_completo VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE,
    ativo BOOLEAN DEFAULT TRUE
);
-- 3. Adicao de chaves estrangeiras
ALTER TABLE tb_supervisor ADD COLUMN IF NOT EXISTS id_coordenador INT REFERENCES tb_coordenador(id_coordenador) ON DELETE SET NULL;
ALTER TABLE tb_tecnico ADD COLUMN IF NOT EXISTS id_supervisor INT REFERENCES tb_supervisor(id_supervisor) ON DELETE SET NULL;

-- 4. Limpeza das colunas denormalizadas da tb_tecnico
ALTER TABLE tb_tecnico
DROP COLUMN IF EXISTS nome_coordenador,
DROP COLUMN IF EXISTS email_coordenador,
DROP COLUMN IF EXISTS nome_gerente,
DROP COLUMN IF EXISTS email_gerente;

-- Populando tb_gerente
INSERT INTO tb_gerente (nome_completo, email) VALUES ('Aquiles Nogueira', 'anogueira@positivo.com.br') ON CONFLICT (email) DO NOTHING;

-- Populando tb_coordenador
DO $$
DECLARE v_id_gerente INT;
BEGIN

    SELECT id_gerente INTO v_id_gerente FROM tb_gerente WHERE UPPER(TRIM(nome_completo)) = UPPER('Aquiles Nogueira') LIMIT 1;
    IF NOT EXISTS (SELECT 1 FROM tb_coordenador WHERE email = 'evertonb@positivo.com.br') THEN
        INSERT INTO tb_coordenador (nome_completo, email, id_gerente) VALUES ('Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', v_id_gerente);
    END IF;


    SELECT id_gerente INTO v_id_gerente FROM tb_gerente WHERE UPPER(TRIM(nome_completo)) = UPPER('Aquiles Nogueira') LIMIT 1;
    IF NOT EXISTS (SELECT 1 FROM tb_coordenador WHERE email = 'mauricio.junior@positivo.com.br') THEN
        INSERT INTO tb_coordenador (nome_completo, email, id_gerente) VALUES ('Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', v_id_gerente);
    END IF;


    SELECT id_gerente INTO v_id_gerente FROM tb_gerente WHERE UPPER(TRIM(nome_completo)) = UPPER('Aquiles Nogueira') LIMIT 1;
    IF NOT EXISTS (SELECT 1 FROM tb_coordenador WHERE email = 'joaor@positivo.com.br') THEN
        INSERT INTO tb_coordenador (nome_completo, email, id_gerente) VALUES ('Joao Ribeiro De Oliveira Neto', 'joaor@positivo.com.br', v_id_gerente);
    END IF;


    SELECT id_gerente INTO v_id_gerente FROM tb_gerente WHERE UPPER(TRIM(nome_completo)) = UPPER('Aquiles Nogueira') LIMIT 1;
    IF NOT EXISTS (SELECT 1 FROM tb_coordenador WHERE email = 'bsousa@positivo.com.br') THEN
        INSERT INTO tb_coordenador (nome_completo, email, id_gerente) VALUES ('Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', v_id_gerente);
    END IF;

END $$;

-- Vinculando tb_supervisor ao id_coordenador
DO $$
DECLARE v_id_coord INT;
BEGIN

    SELECT id_coordenador INTO v_id_coord FROM tb_coordenador WHERE UPPER(TRIM(nome_completo)) = UPPER('Everton Renato Schendroski Bulhessich') LIMIT 1;
    UPDATE tb_supervisor SET id_coordenador = v_id_coord WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva');


    SELECT id_coordenador INTO v_id_coord FROM tb_coordenador WHERE UPPER(TRIM(nome_completo)) = UPPER('Mauricio Antonio De Castro Alves Junior') LIMIT 1;
    UPDATE tb_supervisor SET id_coordenador = v_id_coord WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva');


    SELECT id_coordenador INTO v_id_coord FROM tb_coordenador WHERE UPPER(TRIM(nome_completo)) = UPPER('Mauricio Antonio De Castro Alves Junior') LIMIT 1;
    UPDATE tb_supervisor SET id_coordenador = v_id_coord WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar');


    SELECT id_coordenador INTO v_id_coord FROM tb_coordenador WHERE UPPER(TRIM(nome_completo)) = UPPER('Joao Ribeiro De Oliveira Neto') LIMIT 1;
    UPDATE tb_supervisor SET id_coordenador = v_id_coord WHERE UPPER(TRIM(nome_completo)) = UPPER('Cleandro De Souza Rocha');


    SELECT id_coordenador INTO v_id_coord FROM tb_coordenador WHERE UPPER(TRIM(nome_completo)) = UPPER('Everton Renato Schendroski Bulhessich') LIMIT 1;
    UPDATE tb_supervisor SET id_coordenador = v_id_coord WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem');


    SELECT id_coordenador INTO v_id_coord FROM tb_coordenador WHERE UPPER(TRIM(nome_completo)) = UPPER('Mauricio Antonio De Castro Alves Junior') LIMIT 1;
    UPDATE tb_supervisor SET id_coordenador = v_id_coord WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva');


    SELECT id_coordenador INTO v_id_coord FROM tb_coordenador WHERE UPPER(TRIM(nome_completo)) = UPPER('Gabriel Briiggemann Siqueira Sousa') LIMIT 1;
    UPDATE tb_supervisor SET id_coordenador = v_id_coord WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva');


    SELECT id_coordenador INTO v_id_coord FROM tb_coordenador WHERE UPPER(TRIM(nome_completo)) = UPPER('Gabriel Briiggemann Siqueira Sousa') LIMIT 1;
    UPDATE tb_supervisor SET id_coordenador = v_id_coord WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei');


    SELECT id_coordenador INTO v_id_coord FROM tb_coordenador WHERE UPPER(TRIM(nome_completo)) = UPPER('Gabriel Briiggemann Siqueira Sousa') LIMIT 1;
    UPDATE tb_supervisor SET id_coordenador = v_id_coord WHERE UPPER(TRIM(nome_completo)) = UPPER('Cristiane Aparecida De Almeida');


    SELECT id_coordenador INTO v_id_coord FROM tb_coordenador WHERE UPPER(TRIM(nome_completo)) = UPPER('Gabriel Briiggemann Siqueira Sousa') LIMIT 1;
    UPDATE tb_supervisor SET id_coordenador = v_id_coord WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna');


    SELECT id_coordenador INTO v_id_coord FROM tb_coordenador WHERE UPPER(TRIM(nome_completo)) = UPPER('Gabriel Briiggemann Siqueira Sousa') LIMIT 1;
    UPDATE tb_supervisor SET id_coordenador = v_id_coord WHERE UPPER(TRIM(nome_completo)) = UPPER('Joyce Gomes Rodrigues');


    SELECT id_coordenador INTO v_id_coord FROM tb_coordenador WHERE UPPER(TRIM(nome_completo)) = UPPER('Gabriel Briiggemann Siqueira Sousa') LIMIT 1;
    UPDATE tb_supervisor SET id_coordenador = v_id_coord WHERE UPPER(TRIM(nome_completo)) = UPPER('Cristiane Aparecida De Almeida');


    SELECT id_coordenador INTO v_id_coord FROM tb_coordenador WHERE UPPER(TRIM(nome_completo)) = UPPER('Gabriel Briiggemann Siqueira Sousa') LIMIT 1;
    UPDATE tb_supervisor SET id_coordenador = v_id_coord WHERE UPPER(TRIM(nome_completo)) = UPPER('RENATO DA SILVA SUCUPIRA');

END $$;

-- Vinculando tb_tecnico ao id_supervisor
DO $$
DECLARE v_id_sup INT;
BEGIN

    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RAIMUNDO NAZARENO DA SILVA NAVARRO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ADRIANO ATHAYDE PEDROSA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ANTONIO ENEAS BARROS DE FIGUEIREDO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JUAREZ JACKSON DE LIMA SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARIO LUCAS LIMA LOPES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MIGUEL NICKOLLAS BITTENCOURT ROCHA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VALDER ROBERTO SANTOS BELEM');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WASHINGTON LOPES DA SILVA FILHO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DIOGO VICTOR DO REGO VAZ');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GLEDSON AUGUSTO SANTOS SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('CARLOS ALBERTO CAMPINHO PASSOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('CLEITON ARAUJO SOUSA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DIEGO DO ROSARIO ARAUJO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('FELIPE DURVAL DIAS DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ICARO SENA SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOSE ROBERTO DE JESUS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LEONARDO SANTOS CRUZ');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARIA DE NAZARE SANTOS SOARES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MOISES ALONSO RUAS FILHO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('NOEL OLIVEIRA FERREIRA JUNIOR');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('Rubens Carlos Gonçalves Filho');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VINICIUS NERIS LIMA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ALUIZIO FELIX DA SILVA NETO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ANTONIO EDUARDO MARCOS MAIACA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('AUDISIO BEZERRA DO NASCIMENTO JUNIOR');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DAVID BEZERRA DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('FAGNER MARQUES DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JEFERSON ALVES BEZERRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOAO LUIS DOS REIS LIMA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LEVI LOPES FELIX');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIZ NONATO CARVALHO BRAID');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RICARDO ROBERTSON DA SILVA CAMPOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ANDRE ANTONIO MENINGHIN ALVES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO VITOR FERRAZ DA CRUZ');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DANIEL ANTONIO SILVA OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DANIEL LIMA CRUZ DE OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DANIEL LUIZ TAVARES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DIEGO LEONARDO DE OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL TEODORO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GLAYDSON JUNIO RODRIGUES PASSOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('IGOR VIEIRA MENDES LUZ');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('IZABELA PAIM DE PAULA OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JONATA SILVA PINHO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JONATHAS VINÍCIUS SANTANA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JULIO CEZAR LOPES DOS SANTOS TOMAZ');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LEDSON DOS REIS VILELA MISAEL');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LINCONN ALVES LIMA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS EDUARDO FERNANDES DE OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS ROCHA DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS WENDERSON DE SANDES PEREIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIS GUSTAVO DE SOUZA CARVALHO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Maroe Kao Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUISA DIAS SPIRITO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIZ FELIPE COELHO DE OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIZ HENRIQUE VILABOIM DE OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCOS DIAS DE SALES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCOS POTROS GUILARDUCCI');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MATHEUS HENRIQUE RIBEIRO DE SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ONYALAN SILVA ALMEIDA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('PABLO LUCAS DE MELO SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO VICTOR ANDRADE MOTA VAZ');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('PEDRO HENRIQUE ALVERNAZ DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('PEDRO HENRIQUE CHAGAS VIANA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RAQUEL DE OLIVEIRA MORATO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RENATO MARCOS DE SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RICARDO OLIVEIRA LIMA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('SERGIO HENRIQUE BRAGA RIBEIRO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('THIAGO ARAUJO DE FARIA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('THIAGO PEREIRA DE CASTRO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VINICIUS MENEZES GOMES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VITOR PEREIRA ADRIANO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WASHINGTON LUIZ PERTUSSATI');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Nina Carla Bitencourt Aguilar') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WILLIAM LUCAS DE OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JAIRO EDUARDO LOPES LANDIM');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('NICIAS FREDERICO LONDON GOMES DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('OLIABE MOURA CASTRO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WAGNER PEREIRA ALVES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WANDERSON DOS SANTOS GONÇALVES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('CARLOS HENRIQUE ALVES OLIVEIRA MACAIBA DE SOUSA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('CHARLES PEREIRA DANTAS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DAVI ANDERSON COSTA DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JORGE HENRIQUE FERNANDES NUNES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('PEDRO MARTINIANO PEREIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VANDEBERGER EUSTAQUILINO PEREIRA DE SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('EDILSON CARLOS DE SA NEVES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('EDUARDO LUIZ DE OLIVEIRA DIAS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('EDUARDO LUIZ MORAES DA COSTA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('FERNANDO ANTONIO DE ALMEIDA LIMA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JADSON FERREIRA NEVES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOELSON PEREIRA DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOHNSON PESSOA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JONATHAN FELIPE AVELINO ANDRE GOMES WAVRIK');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOSÉ HENRIQUE DA SILVA RAMOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('KAIO KORION SOARES ACCIOLY LINS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIZ RICARDO VIANA DE MELO FILHO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCIO ANDRE RODRIGUES SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCIO ANDRÉ RODRIGUES SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ROBSON NEGROMONTE VASCONCELOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('THIAGO RODRIGO DE AQUINO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cleandro De Souza Rocha') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('CHARLES ADRIANO HACK');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cleandro De Souza Rocha') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('CLEIDE MANJURA DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cleandro De Souza Rocha') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DANIEL JOSE BISPO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cleandro De Souza Rocha') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL LEONARDO ZIMMERMANN ALVES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cleandro De Souza Rocha') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JONAS FILIPE DO NASCIMENTO SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cleandro De Souza Rocha') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCOS RODRIGUES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cleandro De Souza Rocha') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RODRIGO RODRIGUES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cleandro De Souza Rocha') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VINICIUS EDUARDO FIOR SCARPETA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('AMAURY DE FREITAS GOMES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ARNILDO KAMIEN JUNIOR');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNNO NICOLAS DE MATTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DANIEL GARCIA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('FERNANDO YUTAKA ITO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GUILHERME DE OLIVEIRA SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('HAMILTON ALEXANDRINO DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JAILSON DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JEAN FRANCISCO MIGUEL DE ANDRADE');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS DE OLIVEIRA TEIXEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCIANO DIAS DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCELO DE SOUZA MACHADO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCIO ROBERTO GARBUIO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('NEI DE LIMA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RODRIGO PINHEIRO MARTINS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ROSÉLIO JANTARA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RYAN GABRIEL SKALECKI MARQUES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WESLEY GONÇALVES DE OLIVEIRA DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ADRIANO DE CARVALHO MACHADO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ANTÔNIO CARLOS LEITE DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('CLEISON LIMA DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('EDUARDO TOLC POLITI');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('FABIANO FERREIRA DO AMARAL');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('HUGO LEONARDO DA SILVA RODRIGUES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOÃO HENRIQUE DE ANDRADE FIDELIS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JULIANA LIMA DA COSTA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MAGNO ALEXANDRE DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCELO LADI DE LIMA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCIO DA SILVA EDUARDO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCIO LUIS PEREIRA DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RICARDO ALEXANDRE DA SILVA SCHIMIDT');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ROBSON DA SILVA CASTRO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VALERIA BARBOSA MONTEZUMA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Alessandro Detrano Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WILLIAM EDUARDO ABREU DE SANT ANNA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIZ CLAUDIO DE OLIVEIRA LESSA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MUNIZ ALBINO DA SILVA FILHO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DHIONE PABULO ALVES DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ERICLES GOMES DE ARAUJO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GEOVANE NOLASCO BIZERRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Deyvson Leopoldino Da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIS CARLOS DE ARAUJO JACARANDA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('FABIO CEZIMBRA RUBO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('FILIPE DE LIMA NUNES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GUILHERME DE MATOS PAIVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('IAGNER RUVIARO CARDOSO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LEONARD NUCCI DE OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LEONARDO GOMES MONTEIRO MIGUEIS CERQUEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LILIAN FURTADO FIGUEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIZ FELIPE PEDROSO DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCELO VARGAS DA SILVA JUNIOR');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO CEZAR DA ROSA FILHO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RAFAEL SILVA DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RODOLFO DE OLIVEIRA VICENTE');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VAGNER SILVA RESER');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VINICIUS ESTEVAO LIMA PINTO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VITOR RAPHAEL NELSON SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WESLEN BACCHI');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ADRIANO FERREIRA BEZERRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO DE ANHAIA MILER');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO GOMES KRAETZIG');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('CALONE RODRIGUES HALENSA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DIEGO CLAUDELER FRANCISCO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('EMERSON FRANCA DE SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JAISON SALVADOR');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JONATHAN RABELO COSTA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JORGE LUIZ BENETTI');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JUAN VITOR');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LEANDRO DE SOUZA OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LEONARDO DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIZ FELIPE SARTOR GÓES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO ROBERTO MARCON');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('PETERSON DIEGO DA MOTA RAMOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ABRAAO LINCOLN FONSECA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ADEMIR BORGES DE SOUZA JUNIOR');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ADEMIR PEREIRA DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ADRIANO CESAR RIBAS ZAFFALON');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ADRIEL FELIPE DA SILVA DE OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ALESSANDRA DE FATIMA FERREIRA LOPES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ALEX PEREIRA BASTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ALEXANDRE MATIAS CARVALHO LIMA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cristiane Aparecida De Almeida') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ALFREDO SARETTA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ALISSON MATOS DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ANDERSON FARIAS VIEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ANDRE PANIZZA DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ANDRE QUEIROZ BARROS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ANTONIO FAGNER BASTOS DE SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ANTONIO JOSE SALLUM ALOSTA FILHO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ANTONIO RODRIGO SILVA GOMES DE OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('BIANCA CRISTINA GOMES DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO CORREIA DE OLIVEIRA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO FERNANDES DE FREITAS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO MAJORES RELA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO RAFAEL NASCIMENTO GONCALVES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO RIBEIRO DE OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO WESLEY DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('CAIO CESAR OLIVEIRA DE SOUSA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('CAIO SCARABEL FERREIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('CAIQUE RIBEIRO DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('CHARLES ROCHA LUZ');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('CLOVIS OUCHAR JUNIOR');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('CRISTIAN LEANDRO DE JESUS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DANIEL DA SILVA ANDRADE');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DANIEL TRIVELLATO PERINA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DIEGO DIAS FERREIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DIEGO SANTANA NEGRAES BARBOZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DINO MUTTI FORNIELIS LOPES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DIOGENES TADEU GRACIANO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DIOGO DE SOUZA CECCON');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DOUGLAS JOSE MATOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DOUGLAS OLIVEIRA SEVERIANO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('DOUGLAS VAZ DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Joyce Gomes Rodrigues') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('EDGAR HENRIQUE NERY');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('EDSON ALVES VALADAO FILHO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('EDUARDO ORTOLANI TURCO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ELIAS RODRIGUES BOAVENTURA CUNHA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ERICK WILLIAMS FERREIRA DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ERITON OLIVEIRA PINTO DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('EULLER DOS SANTOS BATISTA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('EVERSON DA SILVA SOARES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('FABRICIO FELIPE DOS SANTOS PINTO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('FELIPE DE ANAJAZ MARTINS NEIVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('Felipe Franca Dos Santos');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cristiane Aparecida De Almeida') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('Felipe Lopes Dos Santos');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('FERNANDO ALVES GALVAO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('FERNANDO CAMPOS SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('FERNANDO VIEIRA ALMEIDA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cristiane Aparecida De Almeida') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('FILIPE MIORIN DE LIMA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('FILIPI DE ALMEIDA MAMONI');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL AMORIM FOGACA DE SOUSA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL DE SOUZA NASCIMENTO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL JUNQUEIRA LEITE');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL LEONARDO OLIVEIRA OZORIO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL PAGLIA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL RENNAN DIAS PEREIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL RIBEIRO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GEILTON APARECIDO CLEMENTE');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Joyce Gomes Rodrigues') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GUILHERME AUGUSTO ALEXANDRE TORTELLI');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Joyce Gomes Rodrigues') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GUILHERME DE ALMEIDA NOGUEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cristiane Aparecida De Almeida') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GUILHERME DE CAMARGO TONETTO DOS REIS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GUILHERME YUZO MIYASIRO UEHARA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GUSTAVO COLETO DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GUSTAVO DE OLIVEIRA BOREL');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GUSTAVO GALDINO MOREIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('GUSTAVO GUIMARAES COSTA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('HELENO MEIRA DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('HENRIQUE GALDINO DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('HERBERT DE ALENCAR GUAREZI');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('IAN GARCIA DA COSTA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('IGOR IAGO DE SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('IZEQUIEL ISRAELITO DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JACIANO SEBASTIAO DE OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('RENATO DA SILVA SUCUPIRA') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JAELSON PAULO DE JESUS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Joyce Gomes Rodrigues') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('Jafherson Kalliu De Matos Oliveira');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Joyce Gomes Rodrigues') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JAYME FUMAGALLI PRADO E SOUSA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JEFERSON ARTUR VULCANIS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('RENATO DA SILVA SUCUPIRA') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JEFERSON RICARDO ASSUNCAO ASTOLFI');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JEFFERSON EDUARDO MOREIRA DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOABE DA SILVA VEIGA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cristiane Aparecida De Almeida') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOAO CARLOS CASTRO DE LIMA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Joyce Gomes Rodrigues') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOAO HENRIQUE RODRIGUES DE SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOAO HENRIQUE SOARES NETO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Joyce Gomes Rodrigues') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOAO PAULO BASTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOAO PAULO DA SILVA RAFAEL');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cristiane Aparecida De Almeida') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('Joao Victor Rigo');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOEL CORREA JUNIOR');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOSE HENRIQUE SEIXAS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JOSE MARLOS LOPES DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cristiane Aparecida De Almeida') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('Junior Batista De Souza');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JUNIOR SANTOS GIGANTE VIANA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('KESLLEY PEREIRA DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('KEVIN AGUIAR DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LEANDRO DAUD COMAR');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LEONARDO DEMETRIO DA FONSECA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LEONARDO FRANCISCO NEVES DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LEONE HENRIQUE DA SILVA SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS CARVALHO PAIVA DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS DA SILVA FEITOSA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS EVANGELISTA AUGUSTO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Joyce Gomes Rodrigues') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas Ferreira Tolentino');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS VINICIUS ALVES GONCALVES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS VINICIUS ALVES GONÇALVES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIS FERNANDO GAZOLA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCELO FABIANO DO NASCIMENTO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCIO SANTOS SANTANA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cristiane Aparecida De Almeida') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('Marco Antonio Fernandes');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCO ANTÔNIO FERNANDES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCUS PABLO GONGORA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARINA ZORZELLI');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MARLON WASLLEY MENDES DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MATEUS FORTUNATO XAVIER');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MATHEUS GUSTAVO LOURENCO DE GODOY');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MATHEUS HENRIQUE ABREU DE FREITAS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MATHEUS VINICIUS SILVEIRA DE CAMPOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MAURICIO FERREIRA NOGUEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MICHEL DA SILVA GOMES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Joyce Gomes Rodrigues') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MICHEL NEVES LOBO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('MOACIR SABINO DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('NATANAEL CAMPOS CAMARGO JUNIOR');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('NILTON CESAR DA SILVA LARANJA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Cristiane Aparecida De Almeida') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('PABLO MARCELO CLEMENTE DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('RENATO DA SILVA SUCUPIRA') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO ANDRE SILVA DE LIMA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO CESAR VITAL');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO HENRIQUE SANTANA DE MELO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO HENRIQUE SOUZA COSTA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RAFAEL ALVES GUIMARAES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RAFAEL DE FREITAS SILVA MENEZES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RAFAEL DE LIMA SANTANA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RAFAEL NUNES LAS CASAS NAVARRO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RAPHAEL ELIAS BARBOSA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RAPHAEL LONDE SIMOES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RENATO NASCIMENTO SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RICARDO APARECIDO BARRETO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RICARDO ROCHA DE SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RICARDO VERONEZZI');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('Rodrigo Maraviglia Occhini');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RODRIGO NARDI MORAIS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RODRIGO PINHEIRO DE AZEVEDO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RODRIGO RODRIGUES ALVES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RODRIGO RUAS MORENO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('ROGERIO ARISTIDES DOS SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RONALDO CESPEDES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RONALDO CORREA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RONALDO UENO VALERIO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RUBENS JUNIO FERREIRA VITALINO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('SAMUEL LUCAS CARNEIRO CHAVES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('SAULO EMMANUEL DOS SANTOS BRITO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('SILAS DE ALVARENGA PRADO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('STEFANY BALBINO DIAS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('STEFANY DIAS ROSSI');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('THIAGO FERNANDO GOMES DE OLIVEIRA PINTO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('THIAGO REINALDO RODRIGUES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Joyce Gomes Rodrigues') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('THOMAZ EDER DE SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VAGNER DE SOUZA BARBOSA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VAGNER VIDAL');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VICTOR HUGO LIMA DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Joyce Gomes Rodrigues') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VICTOR RYAN ZAGO LUJAN');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VINICIUS DACIO DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('VINICIUS MUCIO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WALLACE FERREIRA SOUZA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WANDERSON CRUZ SANTOS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WELLINGTON TRANQUITELLA DE MELO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WELLINGTON VICTOR TORRES');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Antonio Carlos Sant''anna') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WESLEY MACHADO DA SILVA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WESLEY RODRIGUES RIBEIRO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WESLEY SANTOS DA CUNHA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WILLIAM CYRILO MONTEIRO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WILLIAM MARTINS DE OLIVEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Joyce Gomes Rodrigues') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WILLIAM PAULO DEBIEN ARISIO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WILLIANS SANTOS DE PANTAS');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Adriano Luiz Cherubini Pompei') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('WILSON JOSE DE SANTANA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Thiago Cardoso da Silva') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('YURI NOGUEIRA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JAKELINE MEYRE DE CASTRO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('JEFFERSON LUIS CAMPELO DA COSTA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('OLIABE MOURA DE CASTRO');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO VICTOR MATOS LÔLA');


    SELECT id_supervisor INTO v_id_sup FROM tb_supervisor WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas De Lara Gaem') LIMIT 1;
    UPDATE tb_tecnico SET id_supervisor = v_id_sup WHERE UPPER(TRIM(nome_completo)) = UPPER('RAFAEL DA SILVA NASCIMENTO');

END $$;
