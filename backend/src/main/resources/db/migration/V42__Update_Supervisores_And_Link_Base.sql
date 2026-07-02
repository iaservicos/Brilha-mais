-- =================================================================================
-- V42: ATUALIZACAO DE SUPERVISORES E VINCULO (1:N) COM BASES ATP
-- =================================================================================

-- 1. Limpando a tabela de supervisores atual (Reset seguro, pois nao tem dependencias)
TRUNCATE TABLE tb_supervisor RESTART IDENTITY CASCADE;

-- 2. Inserindo os supervisores validados e formatados corretamente
INSERT INTO tb_supervisor (id_supervisor, nome_completo, role, ativo, is_primeiro_acesso) VALUES
(1, 'Lucas De Lara Gaem', 'ADMINISTRADOR', true, true),
(2, 'Nina Carla Bitencourt Aguilar', 'ADMINISTRADOR', true, true),
(3, 'Adriano Luiz Cherubini Pompei', 'ADMINISTRADOR', true, true),
(4, 'Maroe Kao Da Silva', 'ADMINISTRADOR', true, true),
(5, 'Deyvson Leopoldino Da Silva', 'ADMINISTRADOR', true, true),
(6, 'Alessandro Detrano Da Silva', 'ADMINISTRADOR', true, true),
(7, 'JORGE HENRIQUE', 'ADMINISTRADOR', true, true),
(9, 'Antonio Carlos Sant''anna', 'ADMINISTRADOR', true, true),
(10, 'Thiago Cardoso da Silva', 'ADMINISTRADOR', true, true),
(11, 'Joyce Gomes Rodrigues', 'ADMINISTRADOR', true, true),
(12, 'Cristiane Aparecida De Almeida', 'ADMINISTRADOR', true, true),
(13, 'Cleandro De Souza Rocha', 'ADMINISTRADOR', true, true),
(14, 'RENATO DA SILVA SUCUPIRA', 'ADMINISTRADOR', true, true);

-- Ajustando a sequence caso facam inserts manuais no futuro
SELECT setval('tb_supervisor_id_supervisor_seq', (SELECT MAX(id_supervisor) FROM tb_supervisor));

-- 3. Adicionando FK id_supervisor em tb_base_atp (permite NULL para terceiros)
ALTER TABLE tb_base_atp ADD COLUMN IF NOT EXISTS id_supervisor INT;

-- Removendo constraint caso ela ja exista em um estado incerto
ALTER TABLE tb_base_atp DROP CONSTRAINT IF EXISTS fk_base_supervisor;

ALTER TABLE tb_base_atp 
ADD CONSTRAINT fk_base_supervisor 
FOREIGN KEY (id_supervisor) REFERENCES tb_supervisor(id_supervisor) ON DELETE SET NULL;

-- 4. Atualizando os IDs das bases via cruzamento de strings (Inteligencia)
-- Usa UPPER(TRIM()) para garantir match maximo nos nomes
UPDATE tb_base_atp b
SET id_supervisor = s.id_supervisor
FROM tb_supervisor s
WHERE UPPER(TRIM(b.supervisor)) = UPPER(TRIM(s.nome_completo));
