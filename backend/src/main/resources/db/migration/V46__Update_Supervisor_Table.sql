-- V46__Update_Supervisor_Table.sql
-- Atualizacao da tabela tb_supervisor adicionando email e corrigindo os nomes

ALTER TABLE tb_supervisor
ADD COLUMN IF NOT EXISTS email VARCHAR(150) UNIQUE;

UPDATE tb_supervisor SET nome_completo = 'Lucas De Lara Gaem', email = 'lgaem@positivo.com.br' WHERE id_supervisor = 1;
UPDATE tb_supervisor SET nome_completo = 'Nina Carla Bitencourt Aguilar', email = 'ncarla@positivo.com.br' WHERE id_supervisor = 2;
UPDATE tb_supervisor SET nome_completo = 'Adriano Luiz Cherubini Pompeo', email = 'apompeo@positivo.com.br' WHERE id_supervisor = 3;
UPDATE tb_supervisor SET nome_completo = 'Maroe Kao Da Silva', email = 'maroes@positivo.com.br' WHERE id_supervisor = 4;
UPDATE tb_supervisor SET nome_completo = 'Deyvson Leopoldino Da Silva', email = 'deyvsons@positivo.com.br' WHERE id_supervisor = 5;
UPDATE tb_supervisor SET nome_completo = 'Alessandro Detrano Da Silva', email = 'adsilva@positivo.com.br' WHERE id_supervisor = 6;
UPDATE tb_supervisor SET nome_completo = 'Antonio Carlos Sant''anna', email = 'antonio.santanna@positivo.com.br' WHERE id_supervisor = 9;
UPDATE tb_supervisor SET nome_completo = 'Thiago Cardoso da Silva', email = 'tcardoso@positivo.com.br' WHERE id_supervisor = 10;
UPDATE tb_supervisor SET nome_completo = 'Joyce Gomes Rodrigues', email = 'joyce.rodrigues@positivo.com.br' WHERE id_supervisor = 11;
UPDATE tb_supervisor SET nome_completo = 'Cristiane Aparecida De Almeida', email = 'cristiane.almeida@positivo.com.br' WHERE id_supervisor = 12;
UPDATE tb_supervisor SET nome_completo = 'Cleandro De Souza Rocha', email = 'cleandror@positivo.com.br' WHERE id_supervisor = 13;
UPDATE tb_supervisor SET nome_completo = 'RENATO DA SILVA SUCUPIRA', email = 'PASILVA@POSITIVO.COM.BR' WHERE id_supervisor = 14;

-- Removendo Jorge Henrique e Luciano do banco conforme solicitado
UPDATE tb_base_atp SET id_supervisor = NULL, supervisor = NULL WHERE id_supervisor IN (7, 15);
DELETE FROM tb_supervisor WHERE id_supervisor IN (7, 15);
