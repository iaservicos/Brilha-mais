-- V44__Upsert_Bases_And_Tecnicos.sql
-- Sincronizacao mestre de Bases ATP e Tecnicos (Upsert Robusto)

INSERT INTO tb_supervisor (id_supervisor, nome_completo, role, ativo, is_primeiro_acesso)
VALUES (15, 'LUCIANO', 'ADMINISTRADOR', true, true)
ON CONFLICT (id_supervisor) DO NOTHING;

-- Upsert tb_base_atp
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791005', 'POSITIVO TECNOLOGIA SA CURITIBA - (CURITIBA)', 'CURITIBA', 'CR', 'PR', 'LUCAS GAEM', 'LUCAS GAEM', 1)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791006', 'POSITIVO MG', 'BELO HORIZONTE', 'CR', 'MG', 'NINA', 'NINA', 2)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BARUERI', 'CR', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('7812231', 'METHA INFORMATICA LTDA - (PORTO ALEGRE)', 'PORTO ALEGRE', 'CR', 'RS', 'LUCAS GAEM', 'LUCAS GAEM', 1)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('8788160', 'FULL TIME INFORMATICA - (SALVADOR)', 'SALVADOR', 'CR', 'BA', 'MAROE', 'MAROE', 4)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('8788711', 'POSITIVO CE - (FORTALEZA)', 'FORTALEZA', '', 'CE', 'DEYVSON', 'DEYVSON', 5)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('8789471', 'ICLIENT INFORMATICA - (RIO DE JANEIRO)', 'RIO DE JANEIRO', 'CR', 'RJ', 'ALESSANDRO', 'ALESSANDRO', 6)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89000381', 'SMART MIX - (CABEDELO)', 'CABEDELO', 'ATP', 'PB', 'DEYVSON', 'DEYVSON', 5)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89000601', 'GILVAN P SOARES - (NATAL)', 'NATAL', '', 'RN', 'DEYVSON', 'DEYVSON', 5)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89000650', 'a m gomes de araujo me', 'MANAUS', 'CR', 'AM', 'DEYVSON', 'DEYVSON', 5)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89000940', 'ara servicos de informatica ltda', 'FORTALEZA', 'CR', 'CE', 'DEYVSON', 'DEYVSON', 5)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89001401', 'POSITIVO RO - (PORTO VELHO)', 'PORTO VELHO', '', 'RO', 'JORGE HENRIQUE', 'JULIO', 7)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89001630', 'iclient informatica ltda', 'RIO DE JANEIRO', 'CR', 'RJ', 'ALESSANDRO', 'ALESSANDRO', 6)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89001910', 'COM INFORMATICA - (PORTO VELHO)', 'PORTO VELHO', 'ATP', 'RO', 'DEYVSON', 'DEYVSON', 5)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791007', 'POSITIVO TECNOLOGIA - (CURITIBA)', 'CURITIBA', 'ATP', 'PR', 'LUCAS GAEM', 'LUCAS GAEM', 1)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('289264', 'POSITIVO SC - (FLORIANOPOLIS)', 'FLORIANÓPOLIS', 'CR', 'SC', 'LUCAS GAEM', 'LUCAS GAEM', 1)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89007070', 'POSITIVO SC - (SAO JOSE)', 'SANTA CATARINA', 'ATP', 'SC', 'LUCAS GAEM', 'LUCAS GAEM', 1)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89007090', 'MUNDIAL ASSISTENCIA TECNICA - (RECIFE)', 'RECIFE', 'ATP', 'PE', 'DEYVSON', 'DEYVSON', 5)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89009100', 'POSITIVO PB - (JOAO PESSOA)', 'JOÃO PESSOA', 'ATP', 'PB', 'DEYVSON', 'DEYVSON', 5)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89009120', 'POSITIVO TO', 'PALMAS', 'ATP', 'TO', 'LUCAS GAEM', 'LUCAS GAEM', 1)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89009160', 'POSITIVO RN', 'NATAL', 'ATP', 'RN', 'DEYVSON', 'DEYVSON', 5)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('23013', 'positivo informatica N1', 'SÃO PAULO', 'ATP', 'SP', 'LUCIANO', 'LUCIANO', 15)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89007091', 'POSITIVO AL', 'ALAGOAS', 'ATP', 'AL', 'DEYVSON', 'DEYVSON', 5)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89001911', 'POSITIVO AC', 'ACRE', 'ATP', 'AC', 'DEYVSON', 'DEYVSON', 5)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89009511', 'INFRAWISE', 'MATO GROSSO', 'ATP', 'MT', 'DEYVSON', 'DEYVSON', 5)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89009591', 'brd solucoes em tecnologia ltda', 'SÃO JOSE', 'ATP', 'SC', 'LUCAS GAEM', 'LUCAS GAEM', 1)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89000651', 'POSITIVO AP', 'MACAPA', 'ATP', 'AP', 'DEYVSON', 'DEYVSON', 5)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pindamonhangaba', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Miguel Arcanjo', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Miracatu', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pedro De Toledo', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São José Dos Campos', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ribeirão Pires', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Registro', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cubatão', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guarujá', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lorena', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Taubaté', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Caraguatatuba', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bertioga', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'JACAREÍ', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Peruíbe', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Caçapava', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ubatuba', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Sebastião', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Salesópolis', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Vicente', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Rio Grande Da Serra', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Campos Do Jordão', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itanhaém', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Serra Negra', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Apiaí', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Orlândia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Biritiba Mirim', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aparecida', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Taquaritinga', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jacupiranga', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Capão Bonito', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itapira', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santo Antônio De Posse', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mococa', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Juquiá', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Morro Agudo', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pontal', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Isabel', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Rita Do Passa Quatro', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sete Barras', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Socorro', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tambaú', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ibaté', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Cruz Das Palmeiras', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Serrana', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Barrinha', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Rincão', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Monteiro Lobato', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aguaí', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Batatais', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Águas De Lindóia', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Casa Branca', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Amparo', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Espírito Santo Do Pinhal', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Porto Ferreira', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Descalvado', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mogi Guaçu', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cravinhos', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Brotas', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cajuru', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Simão', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São João Da Boa Vista', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Iguape', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mongaguá', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cachoeira Paulista', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pitangueiras', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Juquitiba', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Matão', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itariri', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santos', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MOTUCA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'RIBEIRÃO BONITO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'DOBRADA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CUNHA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUARATINGUETÁ', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CRUZEIRO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ROSEIRA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTO ANTÔNIO DO JARDIM', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ELDORADO', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CAJATI', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'RIBEIRA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ITAÓCA', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PARIQUERA-AÇU', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BARRA DO TURVO', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CANANÉIA', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SÃO JOAQUIM DA BARRA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTA ROSA DE VITERBO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SERRA AZUL', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SALES OLIVEIRA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PARAIBUNA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTA BRANCA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'JAMBEIRO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'NAZARÉ PAULISTA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ILHABELA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ENGENHEIRO COELHO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUARIBA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ARAPEÍ', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Redenção Da Serra', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tapiraí', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itapetininga', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Campinas', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Riversul', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itararé', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Boituva', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Votorantim', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sorocaba', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pirassununga', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ibiúna', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Americana', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Limeira', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Piracicaba', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ipeúna', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Paulínia', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jundiaí', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pedreira', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pilar Do Sul', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Buri', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Bárbara Doeste', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Rio Claro', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Valinhos', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guareí', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Bárbara D Oeste', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Indaiatuba', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Hortolândia', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Capivari', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Várzea Paulista', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itaí', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Vinhedo', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'COSMOPOLIS', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sumaré', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itupeva', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tatuí', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jarinu', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Porto Feliz', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Salto De Pirapora', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Iracemápolis', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Monte Mor', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itu', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bom Sucesso De Itararé', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bragança Paulista', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Angatuba', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mairinque', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itapeva', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Avaré', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Rio Das Pedras', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Laranjal Paulista', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Pedro', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Taquarituba', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Salto', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itirapina', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Piraju', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itatiba', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tietê', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jaguariúna', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Piedade', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nova Odessa', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cerquilho', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Fartura', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nova Campina', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Anhembi', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MANDURI', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ITATINGA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CORONEL MACEDO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ITABERÁ', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PRATÂNIA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BOFETE', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TAGUAÍ', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ÁGUAS DE SANTA BÁRBARA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CERQUEIRA CÉSAR', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CAMPINA DO MONTE ALEGRE', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ÓLEO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CABREÚVA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ARTUR NOGUEIRA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'LOUVEIRA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'LEME', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTA CRUZ DA CONCEIÇÃO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ARARAS', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SÃO ROQUE', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUAPIARA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ALAMBARI', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PEDRA BELA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GRAMADINHO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ITAPORANGA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ARANDU', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Mercedes', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guararapes', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guarani Doeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tupi Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Botucatu', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Presidente Prudente', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Adamantina', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cafelândia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Araçatuba', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bauru', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Altinópolis', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lençóis Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lins', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Rinópolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Andradina', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santópolis Do Aguapeí', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pirapozinho', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Espigão', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SÃO JOSÉ DO RIO PRETO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nova Guataporanga', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Elisiário', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Franca', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bastos', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ubarana', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Marília', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Paraguaçu Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Birigui', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lavínia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Boracéia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Teodoro Sampaio', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jaú', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Buritizal', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pedregulho', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Caiabu', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cândido Mota', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tarumã', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Estrela D Oeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Salto Grande', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ourinhos', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Florínea', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Palmital', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pereira Barreto', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mesópolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Manuel', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pedranópolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Monte Aprazível', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Suzanápolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itápolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Gabriel Monteiro', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Euclides Da Cunha Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Votuporanga', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tanabi', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ilha Solteira', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bady Bassitt', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Marinópolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Presidente Venceslau', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Herculândia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Iepê', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Igaraçu Do Tietê', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Três Fronteiras', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Monte Castelo', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Uchoa', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'José Bonifácio', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Irapuru', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Garça', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tupã', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mirassol', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bálsamo', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lourdes', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lupércio', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Populina', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Barra Bonita', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Assis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guaraçaí', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Fernandópolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Catanduva', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Barretos', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Duartina', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ouro Verde', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Parapuã', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Presidente Epitácio', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Paulicéia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Alvinlândia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mirante Do Paranapanema', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Álvares Machado', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Caiuá', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ituverava', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Oriente', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Novo Horizonte', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Monte Azul Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Turiúba', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Promissão', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santo Anastácio', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Palmeira Doeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nantes', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pindorama', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Planalto', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Taciba', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Penápolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Rosana', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Junqueirópolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pederneiras', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Fé Do Sul', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bebedouro', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Restinga', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Osvaldo Cruz', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guaíra', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Monte Alto', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jales', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Igarapava', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mirandópolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nhandeara', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Borborema', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'General Salgado', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ibitinga', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bariri', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Potirendaba', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Urânia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Reginópolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Fernando Prestes', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guarantã', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São João Do Pau Dalho', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nova Granada', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Cruz Do Rio Pardo', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Rancharia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lucélia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Glicério', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pompéia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Dracena', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'RUBIÁCEA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'NOVA LUZITÂNIA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BENTO DE ABREU', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'IACRI', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'COLINA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PALMARES PAULISTA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'JABORANDI', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'LUCIANÓPOLIS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'IACANGA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'AGUDOS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PONGAÍ', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PIQUEROBI', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CASTILHO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'FLÓRIDA PAULISTA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'NOVA INDEPENDÊNCIA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTA SALETE', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'INDIAPORÃ', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUZOLÂNDIA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SÃO JOÃO DAS DUAS PONTES', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUARÁ', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'RIFAINA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'DOIS CÓRREGOS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ITAPUÍ', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BOCAINA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TORRINHA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'NOVA EUROPA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'UBIRAJARA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'IPAUSSU', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ÁLVARO DE CARVALHO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'VERA CRUZ', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CAMPOS NOVOS PAULISTA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CANITAR', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'AVANHANDAVA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'JÚLIO MESQUITA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SÃO PEDRO DO TURVO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GETULINA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUAIÇARA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'QUEIROZ', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'REGENTE FEIJÓ', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PRACINHA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'JOÃO RAMALHO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MARTINÓPOLIS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PRESIDENTE BERNARDES', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CRUZÁLIA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'POLONI', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TABAPUÃ', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ARIRANHA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'EMILIANÓPOLIS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'IRAPUÃ', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SUD MENNUCCI', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ALFREDO MARCONDES', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PANORAMA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO PAULO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itapecerica Da Serra', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santo André', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Embu Das Artes', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mauá', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Francisco Morato', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Bernardo Do Campo', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Atibaia', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Caetano Do Sul', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Diadema', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Caieiras', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Franco Da Rocha', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Embu-Guaçu', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Piracaia', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Campo Limpo Paulista', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CAJAMAR', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mairiporã', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guarulhos', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Carapicuíba', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itaquaquecetuba', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itapevi', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Suzano', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Osasco', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ferraz De Vasconcelos', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Arujá', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Poá', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cotia', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Barueri', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Taboão Da Serra', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jandira', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Vargem Grande Paulista', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santana De Parnaíba', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TABOAO DA SERRA', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUAPIAÇU', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SÃO PAULO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aracatuba', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'JUNDIAI', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SÃO LOURENÇO DA SERRA', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CORDEIRÓPOLIS', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUARUJA', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MENDONÇA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SÃO JOSÉ DA BELA VISTA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'LAVRINHAS', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PONTES GESTAL', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MAUA', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTO ANTÔNIO DO PINHAL', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'AURIFLAMA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO CARLOS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO CAETANO DO SUL', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'JACAREI', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'JAU', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO VICENTE', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'IBIRÁ', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'RIBEIRÃO GRANDE', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'RUBINÉIA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTANA DA PONTE PENSA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'QUATÁ', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MARILIA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BRODOWSKI', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'DIVINOLÂNDIA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO SEBASTIAO DA GRAMA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'RIBEIRÃO DOS ÍNDIOS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PIQUETE', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SÃO LUIZ DO PARAITINGA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ÁGUAS DA PRATA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SÃO BENTO DO SAPUCAÍ', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BREJO ALEGRE', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MARABÁ PAULISTA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BREJO ALEGRE', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO BERNARDO DO CAMPO', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CONCHAL', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'AMÉRICO BRASILIENSE', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SÃO JOSÉ DO RIO PARDO', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MACAUBAL', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ITAPOLIS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'IGARACU DO TIETE', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BURITAMA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TABATINGA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO ROQUE', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SUMARE', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUARAREMA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ITARARE', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TUPA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'QUELUZ', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ALTINOPOLIS', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO JOSE DO RIO PRETO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PARAÍSO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTA GERTRUDES', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'NATIVIDADE DA SERRA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTO ANDRE', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MORUNGABA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SALES', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PERUIBE', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'LUÍS ANTÔNIO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GAVIÃO PEIXOTO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SEVERÍNIA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'FERNÃO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ribeirão Preto', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Carlos', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Araraquara', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sertãozinho', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jardinópolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Vargem Grande Do Sul', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PRAIA GRANDE', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MOGI DAS CRUZES', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'RIBEIRAO PRETO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TAUBATE', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MIGUELÓPOLIS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'NOVA CANAÃ PAULISTA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'COROADOS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'VISTA ALEGRE DO ALTO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'QUADRA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'COSMÓPOLIS', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ARAÇOIABA DA SERRA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TIMBURI', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TREMEMBE', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TREMEMBÉ', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTO ANTÔNIO DO ARACANGUÁ', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TAQUARAL', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ESTRELA DOESTE', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'HORTOLANDIA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'IPORANGA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ALUMÍNIO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BOM JESUS DOS PERDOES', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'IARAS', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO JOSE DOS CAMPOS', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTA ADELIA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ITANHAEM', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CARDOSO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PEREIRAS', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'JOSE BONIFACIO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'IPIGUÁ', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PROMISSAO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TAPIRATIBA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CARAPICUIBA', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUARATINGUETA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PRESIDENTE EPITACIO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTA CLARA DOESTE', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('7004722', 'PC LINK', 'BRASILIA', 'ATP', 'DF', 'NINA', 'NINA', 2)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('8788601', 'CM DIGITAL', 'GOIANIA', 'ATP', 'GO', 'NINA', 'NINA', 2)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CERQUEIRA CESAR', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'LAGOINHA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'AREIAS', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO FRANCISCO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SÃO FRANCISCO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SALTINHO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'URU', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BRASÍLIA', 'ATP', 'DF', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'JARDINOPOLIS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'AMERICO BRASILIENSE', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUAIMBÊ', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PINHALZINHO', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BRAGANCA PAULISTA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'POMPEIA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO JOSE DO RIO PARDO', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'RIOLÂNDIA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CAMPOS DE CUNHA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'OLÍMPIA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'LUIS ANTONIO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'JABOTICABAL', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PRADOPOLIS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ÁLVARES FLORENCE', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PRADÓPOLIS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ÁLVARES FLORENCE', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'OCAUÇU', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ESPÍRITO SANTO DO TURVO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ORLANDIA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTA ERNESTINA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'JOANÓPOLIS', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ÁGUAS DE SÃO PEDRO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SALMOURÃO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PACAEMBU', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'VALENTIM GENTIL', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'AGUAS DE SAO PEDRO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MOGI GUACU', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTA BARBARA DOESTE', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ALTO ALEGRE', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MINEIROS DO TIETÊ', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO SEBASTIAO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ORINDIÚVA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CESARIO LANGE', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'UNIÃO PAULISTA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTA CLARA D OESTE', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BILAC', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'INÚBIA PAULISTA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTA RITA DOESTE', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PIRAPORA DO BOM JESUS', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TAIAÇU', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CAJOBI', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BOA ESPERANCA DO SUL', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TUIUTI', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('89009670', 'POSITIVO SC - (FLORIANOPOLIS)', 'FLORIANÓPOLIS', 'CR', 'SC', 'LUCAS GAEM', 'LUCAS GAEM', 1)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', '2791040', 'BOM JESUS DOS PERDÕES', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO PAULO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO PEDRO', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SANTA ADÉLIA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MARACAÍ', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PIRAJUÍ', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'TEJUPÁ', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ADOLFO', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MAIRIPORA', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SÃO JOSÉ DO BARREIRO', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SARAPUÍ', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GÁLIA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SÃO SEBASTIÃO DA GRAMA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'AVARE', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CÁSSIA DOS COQUEIROS', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PARANAPANEMA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MONTE APRAZIVEL', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'OUROESTE', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SAO JOAO DA BOA VISTA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'NOVAIS', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'NUPORANGA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'IPERÓ', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MOMBUCA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ASPÁSIA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ZACARIAS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BANANAL', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'VARZEA PAULISTA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'FLORESTA DO SUL', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUAPIACU', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUAPIAÇU', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ARAMINA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'IGARATA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'IGARATÁ', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CLEMENTINA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CUBATAO', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'FERNANDOPOLIS', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ARAÇARIGUAMA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'INDIANA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'COSMORAMA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'SERTAOZINHO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CORDEIROPOLIS', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUARA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MATAO', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'MACEDÔNIA', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ESTIVA GERBI', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ITAJU', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PARAISO', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Águas De Santa Barbara', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aguas De Santa Barbara', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Analandia', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Analândia', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Apiai', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'ARACARIGUAMA', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aracoiaba Da Serra', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Barão Ataliba Nogueira', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Barao De Antonina', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Barão De Antonina', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Barra Do Chapeu', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Barra Do Chapéu', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Batatuba', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bernardino De Campos', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bom Fim Do Bom Jesus', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Capela Do Alto', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cardeal', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Charqueada', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Conchas', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Corumbatai', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Corumbataí', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Elias Fausto', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guarei', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guarizinho', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Holambra', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ipero', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ipeuna', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'GUATAPARÁ', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'COLÔMBIA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'PATROCÍNIO PAULISTA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CACONDE', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aruja', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Biritiba-Ussu', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Poa', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Lourenco Da Serra', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Lourenço Da Serra', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Lourenco Da Serra', 'ATP', 'SP', 'ADRIANO', 'ADRIANO', 3)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aguas De São Pedro', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Águas De Sao Pedro', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aluminio', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bom Sucesso De Itarare', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cabreuva', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cesário Lange', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cosmopolis', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ibiuna', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Iracemapolis', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itabera', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itai', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itapirapua Paulista', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itapirapuã Paulista', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jaguariuna', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jumirim', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Maristela', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Oleo', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pardinho', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Paruru', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Paulinia', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Porangaba', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pratania', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Rafard', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Rechan', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ribeirao Branco', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ribeirão Branco', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Barbara D Oeste', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Barbara D''Oeste', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Bárbara D''Oeste', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Cruz Da Conceiçao', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Maria', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sarapui', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sarutaia', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sarutaiá', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Taguai', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Táguai', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tapirai', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Taquarivai', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Taquarivaí', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tatui', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tejupa', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tiete', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Torre De Pedra', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Vargem', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Varginha', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aguai', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'BARRA VELHA', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aguas Da Prata', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aguas De Lindoia', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aguas De Lindóia', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Águas De Lindoia', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Altair', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Alvares Florence', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Americo De Campos', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Américo De Campos', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Baguaçu', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Balsamo', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Barrânia', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Candido Rodrigues', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cândido Rodrigues', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cassia Dos Coqueiros', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Catigua', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Catiguá', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cedral', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Colombia', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cristais Paulista', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Divinolandia', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Elisiario', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Embauba', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Embaúba', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Espirito Santo Do Pinhal', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guaira', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guaraci', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ibira', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ibitiúva', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Icem', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Icém', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ipigua', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Irapua', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itajobi', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itirapua', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itirapuã', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itobi', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jaci', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jeriquara', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jose Bonifácio', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'José Bonifacio', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lindoia', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lindóia', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Marapoama', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mendonca', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Miguelopolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mirassolandia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mirassolândia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mogi Mirim', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Monte Alegre Do Sul', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Neves Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nipoa', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nipoã', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nova Alianca', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nova Aliança', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Olimpia', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Onda Verde', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Orindiuva', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Palestina', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Patrocinio Paulista', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Paulo De Faria', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pirangi', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ribeirao Corrente', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ribeirão Corrente', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Riolandia', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sabino', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Cruz Da Conceicao', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santo Antonio Da Alegria', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santo Antônio Da Alegria', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santo Antonio De Posse', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santo Antonio Do Jardim', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Jose Da Bela Vista', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao José Da Bela Vista', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Jose Da Bela Vista', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao José Do Rio Pardo', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Jose Do Rio Pardo', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao José Do Rio Preto', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sebastianopolis Do Sul', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sebastianópolis Do Sul', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Severinia', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Taiacu', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Taiuva', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Taiúva', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tambau', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tabapua', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Terra Roxa', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Uniao Paulista', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Urupes', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Urupês', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Viradouro', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ana Dias', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Arapei', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ariri', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Águai', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Biritiba-Mirim', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cacapava', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cacapava', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Campos Do Jordao', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cananeia', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Capao Bonito', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Caráguatatuba', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Caruara', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ilha Comprida', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itaoca', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jacaré', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Joanopolis', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Juquia', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lageado De Araçaíba', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mongagua', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mongágua', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nazare Paulista', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nossa Senhora Do Remédio', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pariquera Acu', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pariquera-Acu', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ponta Grossa', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Potim', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Quilombo', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Redencao Da Serra', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Redençao Da Serra', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ribeirao Grande', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ribeirao Pires', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Salesopolis', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santo Antonio Do Pinhal', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Bento Do Sapucai', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Bento Do Sapucaí', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Bento Do Sapucai', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Francisco Xavier', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Jose Do Barreiro', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao José Do Barreiro', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Jose Do Barreiro', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao José Dos Campos', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Jose Dos Campos', 'ATP', 'SP', 'ANTONIO', 'ANTONIO', 9)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Luiz Do Paraitinga', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Miguel Arcanjo', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Silveiras', 'ATP', 'SP', 'CRISTIANE', 'CRISTIANE', 12)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Boa Esperança Do Sul', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bonfim Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Candia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Dourado', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Dumont', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guatapara', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ibate', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Igaraí', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ipua', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ipua', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ipuã', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Jurucê', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Luis Antônio', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nova América', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ribeirao Bonito', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Rincao', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Cruz Da Esperanca', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Cruz Da Esperança', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Eudóxia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Lucia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Lúcia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Rita Do Passa Quatr', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Benedito Das Areias', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Joaquim Da Barra', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Simao', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São Simao', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Trabiju', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Agisse', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Alvares Machado', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Alvaro De Carvalho', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Alvinlandia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Anhumas', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aparecida D Oeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aparecida Doeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aparecida D''Oeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Arco-Iris', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Arco-Íris', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Arealva', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Areiopolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Areiópolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Arenópolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Aspasia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Avai', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Avaí', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Balbinos', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bandeirantes D Oeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Barbosa', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Birigüi', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Bora', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Borá', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Boraceia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Borebi', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Brauna', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Braúna', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cabralia Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cabrália Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cafelandia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Caiua', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Candido Mota', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Chavantes', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Costa Machado', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cruzalia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Cuiabá Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Dirce Reis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Dois Corregos', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Dois Corregos', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Dolcinopolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Dolcinópolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Echapora', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Echaporã', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Emilianopolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Eneida', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Espirito Santo Do Turvo', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Estrela Do Norte', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Estrela D''Oeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Euclides Da Cunha Paulist', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Fernao', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Flora Rica', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Floreal', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Florida Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Florinea', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Florinia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Galia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Garca', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Gastao Vidigal', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Gastão Vidigal', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Gaviao Peixoto', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Glicerio', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guaicara', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guaicara', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guaimbe', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guaracai', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guaraçai', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guarani D Oeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guarani D''Oeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guaranta', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guzolandia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Herculandia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ibirarema', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Iepe', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Indiapora', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Inubia Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itapui', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itapura', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Itororó Do Paranapanema', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Joao Ramalho', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Juliânia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Julio Mesquita', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Junqueiropolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lavinia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lencois Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lucelia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lucianopolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Luiziania', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Luiziânia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lupercio', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lutecia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Lutécia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Macatuba', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Macedonia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Macucos', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Magda', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Maraba Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Maracai', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mariapolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mariápolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Marinopolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Martinopolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Meridiano', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mesopolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mineiros Do Tiete', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mira Estrela', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Mirandopolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Moncoes', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Monçoes', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Monções', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Murutinga Do Sul', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Narandiba', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nova Canaa Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nova Castilho', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nova Independencia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Nova Luzitania', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ocaucu', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Oscar Bressane', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Palmeira D Oeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Palmeira D''Oeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Paraguacu Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Paráguacu Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Paranapua', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Paranapuã', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Parapua', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Parisi', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pauliceia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Paulistania', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Paulistânia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pedranopolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pedrinhas Paulista', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Penapolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Piacatu', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pirajui', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Piratininga', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Planalto Do Sul', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Platina', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pongai', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Pontalinda', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Presidente Alves', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Primavera', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Prudêncio E Moraes', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Quata', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Quintana', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Regente Feijo', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Reginopolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ribeirao Do Sul', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ribeirão Do Sul', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ribeirao Dos Indios', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ribeirao Dos Índios', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Ribeirão Dos Indios', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Rinopolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Rubiacea', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Rubineia', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sagres', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Salmourao', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sandovalina', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Albertina', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Clara D''Oeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Fe Do Sul', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Maria Da Serra', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Rita D Oeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santa Rita D''Oeste', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santo Anastacio', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santo Antonio Do Aracangua', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santo Antônio Do Aracangua', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santo Expedito', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santopolis Do Aguapei', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santopolis Do Águapei', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Santópolis Do Aguapei', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Joao Das Duas Pontes', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Joao De Iracema', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São João De Iracema', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Joao Do Pau D Alho', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São João Do Pau D Alho', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Joao Do Pau D''Alho', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'São João Do Pau D''Alho', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Manuel', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Sao Pedro Do Turvo', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Suzanapolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tarabai', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Taruma', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Três Alianças', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Tres Fronteiras', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Turiuba', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Turmalina', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Urania', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Valparaiso', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Valparaíso', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Vicentinópolis', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Vitoria Brasil', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Vitória Brasil', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Água Vermelha', 'ATP', 'SP', 'JOYCE', 'JOYCE', 11)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Embu Guacu', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Embu-Guacu', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Guarapiranga', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Paulista', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'Central', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;
INSERT INTO tb_base_atp (ct_codigo, nome_atp, cidade, tipo, uf, supervisor, responsavel, id_supervisor)
VALUES ('2791040', 'POSITIVO SP', 'CAMPO GRANDE', 'ATP', 'SP', 'THIAGO', 'THIAGO', 10)
ON CONFLICT (ct_codigo) DO UPDATE SET
    nome_atp = EXCLUDED.nome_atp,
    cidade = EXCLUDED.cidade,
    tipo = EXCLUDED.tipo,
    uf = EXCLUDED.uf,
    supervisor = EXCLUDED.supervisor,
    responsavel = EXCLUDED.responsavel,
    id_supervisor = EXCLUDED.id_supervisor;

-- Adiciona colunas para hierarquia gerencial e de contato na tb_tecnico
ALTER TABLE tb_tecnico
ADD COLUMN IF NOT EXISTS email VARCHAR(150),
ADD COLUMN IF NOT EXISTS celular_corporativo VARCHAR(50),
ADD COLUMN IF NOT EXISTS nome_coordenador VARCHAR(150),
ADD COLUMN IF NOT EXISTS email_coordenador VARCHAR(150),
ADD COLUMN IF NOT EXISTS nome_gerente VARCHAR(150),
ADD COLUMN IF NOT EXISTS email_gerente VARCHAR(150);

-- Atualizacao/Insercao robusta dos dados dos Tecnicos
DO $$
DECLARE
    v_id_tecnico INT;
BEGIN

    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RAIMUNDO NAZARENO DA SILVA NAVARRO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73676', 
            email = 'rnavarro@positivo.com.br', 
            celular_corporativo = '5538998350626', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RAIMUNDO NAZARENO DA SILVA NAVARRO', '73676', 'rnavarro@positivo.com.br', '5538998350626', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ADRIANO ATHAYDE PEDROSA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74719', 
            email = 'aathayde@positivo.com.br', 
            celular_corporativo = '5582988488560', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ADRIANO ATHAYDE PEDROSA', '74719', 'aathayde@positivo.com.br', '5582988488560', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ANTONIO ENEAS BARROS DE FIGUEIREDO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74300', 
            email = 'antoniof@positivo.com.br', 
            celular_corporativo = '5541999318927', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ANTONIO ENEAS BARROS DE FIGUEIREDO', '74300', 'antoniof@positivo.com.br', '5541999318927', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JUAREZ JACKSON DE LIMA SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JUAREZ JACKSON DE LIMA SANTOS', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARIO LUCAS LIMA LOPES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74291', 
            email = 'mario.lopes@positivo.com.br', 
            celular_corporativo = '5541991940369', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARIO LUCAS LIMA LOPES', '74291', 'mario.lopes@positivo.com.br', '5541991940369', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MIGUEL NICKOLLAS BITTENCOURT ROCHA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72725', 
            email = 'MNROCHA@POSITIVO.COM.BR', 
            celular_corporativo = '92 9 92339329', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MIGUEL NICKOLLAS BITTENCOURT ROCHA', '72725', 'MNROCHA@POSITIVO.COM.BR', '92 9 92339329', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VALDER ROBERTO SANTOS BELEM') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VALDER ROBERTO SANTOS BELEM', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WASHINGTON LOPES DA SILVA FILHO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74361', 
            email = 'washington.filho@positivo.com.br', 
            celular_corporativo = '92 9 93726949', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WASHINGTON LOPES DA SILVA FILHO', '74361', 'washington.filho@positivo.com.br', '92 9 93726949', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DIOGO VICTOR DO REGO VAZ') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75164', 
            email = 'DIOGO.VAZ@POSITIVO.COM.BR', 
            celular_corporativo = '96 9 91881252', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DIOGO VICTOR DO REGO VAZ', '75164', 'DIOGO.VAZ@POSITIVO.COM.BR', '96 9 91881252', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GLEDSON AUGUSTO SANTOS SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60178', 
            email = 'gsilva@positivo.com.br', 
            celular_corporativo = '5541991698406', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GLEDSON AUGUSTO SANTOS SILVA', '60178', 'gsilva@positivo.com.br', '5541991698406', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('CARLOS ALBERTO CAMPINHO PASSOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74795', 
            email = 'carlosp@positivo.com.br', 
            celular_corporativo = '5541992511659', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('CARLOS ALBERTO CAMPINHO PASSOS', '74795', 'carlosp@positivo.com.br', '5541992511659', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('CLEITON ARAUJO SOUSA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'cleiton.sousa@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('CLEITON ARAUJO SOUSA', NULL, 'cleiton.sousa@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DIEGO DO ROSARIO ARAUJO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72349', 
            email = 'diegoa@positivo.com.br', 
            celular_corporativo = '5541991877590', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DIEGO DO ROSARIO ARAUJO', '72349', 'diegoa@positivo.com.br', '5541991877590', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('FELIPE DURVAL DIAS DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('FELIPE DURVAL DIAS DA SILVA', NULL, NULL, NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ICARO SENA SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ICARO SENA SOUZA', NULL, NULL, NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOSE ROBERTO DE JESUS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'joses@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOSE ROBERTO DE JESUS SANTOS', NULL, 'joses@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LEONARDO SANTOS CRUZ') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LEONARDO SANTOS CRUZ', NULL, NULL, NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARIA DE NAZARE SANTOS SOARES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'maria.soares@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARIA DE NAZARE SANTOS SOARES', NULL, 'maria.soares@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MOISES ALONSO RUAS FILHO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73180', 
            email = 'moisesf@positivo.com.br', 
            celular_corporativo = '5541991940369', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MOISES ALONSO RUAS FILHO', '73180', 'moisesf@positivo.com.br', '5541991940369', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('NOEL OLIVEIRA FERREIRA JUNIOR') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73763', 
            email = 'noel.junior@positivo.com.br', 
            celular_corporativo = '5541992243924', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('NOEL OLIVEIRA FERREIRA JUNIOR', '73763', 'noel.junior@positivo.com.br', '5541992243924', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('Rubens Carlos Gonçalves Filho') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73966', 
            email = 'rubensf@positivo.com.br', 
            celular_corporativo = '5571999137127', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('Rubens Carlos Gonçalves Filho', '73966', 'rubensf@positivo.com.br', '5571999137127', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VINICIUS NERIS LIMA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73761', 
            email = 'vinicius.lima@positivo.com.br', 
            celular_corporativo = '5541992571485', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VINICIUS NERIS LIMA', '73761', 'vinicius.lima@positivo.com.br', '5541992571485', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ALUIZIO FELIX DA SILVA NETO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74305', 
            email = 'aluiziof@positivo.com.br', 
            celular_corporativo = '5551996142219', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ALUIZIO FELIX DA SILVA NETO', '74305', 'aluiziof@positivo.com.br', '5551996142219', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ANTONIO EDUARDO MARCOS MAIACA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'antonio.maia@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ANTONIO EDUARDO MARCOS MAIACA', NULL, 'antonio.maia@positivo.com.br', NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('AUDISIO BEZERRA DO NASCIMENTO JUNIOR') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74304', 
            email = 'audisiob@positivo.com.br', 
            celular_corporativo = '5511996085945', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('AUDISIO BEZERRA DO NASCIMENTO JUNIOR', '74304', 'audisiob@positivo.com.br', '5511996085945', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DAVID BEZERRA DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '71456', 
            email = 'david.santos@positivo.com.br', 
            celular_corporativo = '5585987520222', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DAVID BEZERRA DOS SANTOS', '71456', 'david.santos@positivo.com.br', '5585987520222', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('FAGNER MARQUES DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60855', 
            email = 'fagner.silva@positivo.com.br', 
            celular_corporativo = '5585988266974', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('FAGNER MARQUES DA SILVA', '60855', 'fagner.silva@positivo.com.br', '5585988266974', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JEFERSON ALVES BEZERRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74306', 
            email = 'jefersonb@positivo.com.br', 
            celular_corporativo = '5588996061439', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JEFERSON ALVES BEZERRA', '74306', 'jefersonb@positivo.com.br', '5588996061439', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOAO LUIS DOS REIS LIMA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOAO LUIS DOS REIS LIMA', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LEVI LOPES FELIX') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LEVI LOPES FELIX', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIZ NONATO CARVALHO BRAID') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUIZ NONATO CARVALHO BRAID', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RICARDO ROBERTSON DA SILVA CAMPOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RICARDO ROBERTSON DA SILVA CAMPOS', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ANDRE ANTONIO MENINGHIN ALVES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72389', 
            email = 'andre.alves@positivo.com.br', 
            celular_corporativo = '5511915560055', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ANDRE ANTONIO MENINGHIN ALVES', '72389', 'andre.alves@positivo.com.br', '5511915560055', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO VITOR FERRAZ DA CRUZ') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72689', 
            email = 'brunov@positivo.com.br', 
            celular_corporativo = '5532999417970', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('BRUNO VITOR FERRAZ DA CRUZ', '72689', 'brunov@positivo.com.br', '5532999417970', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DANIEL ANTONIO SILVA OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72616', 
            email = 'daniel.oliveira@positivo.com.br', 
            celular_corporativo = '5531999163116', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DANIEL ANTONIO SILVA OLIVEIRA', '72616', 'daniel.oliveira@positivo.com.br', '5531999163116', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DANIEL LIMA CRUZ DE OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73705', 
            email = 'danielo@positivo.com.br', 
            celular_corporativo = '5531993079866', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DANIEL LIMA CRUZ DE OLIVEIRA', '73705', 'danielo@positivo.com.br', '5531993079866', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DANIEL LUIZ TAVARES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60889', 
            email = 'daniel.tavares@positivo.com.br', 
            celular_corporativo = '5531984085045', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DANIEL LUIZ TAVARES', '60889', 'daniel.tavares@positivo.com.br', '5531984085045', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DIEGO LEONARDO DE OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75514', 
            email = 'diegol@positivo.com.br', 
            celular_corporativo = '(31) 99771-9109', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DIEGO LEONARDO DE OLIVEIRA', '75514', 'diegol@positivo.com.br', '(31) 99771-9109', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL TEODORO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72332', 
            email = 'gabriel.teodoro@positivo.com.br', 
            celular_corporativo = '5531971304970', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GABRIEL TEODORO', '72332', 'gabriel.teodoro@positivo.com.br', '5531971304970', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GLAYDSON JUNIO RODRIGUES PASSOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74353', 
            email = 'glaydsonp@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GLAYDSON JUNIO RODRIGUES PASSOS', '74353', 'glaydsonp@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('IGOR VIEIRA MENDES LUZ') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73258', 
            email = 'iluz@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('IGOR VIEIRA MENDES LUZ', '73258', 'iluz@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('IZABELA PAIM DE PAULA OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75043', 
            email = 'izabelao@positivo.com.br', 
            celular_corporativo = '5531999836088', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('IZABELA PAIM DE PAULA OLIVEIRA', '75043', 'izabelao@positivo.com.br', '5531999836088', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JONATA SILVA PINHO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75058', 
            email = 'jonata.pinho@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JONATA SILVA PINHO', '75058', 'jonata.pinho@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JONATHAS VINÍCIUS SANTANA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75044', 
            email = 'jonathas.ana@positivo.com.br', 
            celular_corporativo = '5531992908671', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JONATHAS VINÍCIUS SANTANA', '75044', 'jonathas.ana@positivo.com.br', '5531992908671', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JULIO CEZAR LOPES DOS SANTOS TOMAZ') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74470', 
            email = 'julio.tomaz@positivo.com.br', 
            celular_corporativo = '5531999110741', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JULIO CEZAR LOPES DOS SANTOS TOMAZ', '74470', 'julio.tomaz@positivo.com.br', '5531999110741', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LEDSON DOS REIS VILELA MISAEL') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74354', 
            email = 'ledsonm@positivo.com.br', 
            celular_corporativo = '5534998808453', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LEDSON DOS REIS VILELA MISAEL', '74354', 'ledsonm@positivo.com.br', '5534998808453', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LINCONN ALVES LIMA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74903', 
            email = 'linconnl@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LINCONN ALVES LIMA', '74903', 'linconnl@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS EDUARDO FERNANDES DE OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUCAS EDUARDO FERNANDES DE OLIVEIRA', NULL, NULL, NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS ROCHA DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74289', 
            email = 'lrocha@positivo.com.br', 
            celular_corporativo = '5534984079841', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUCAS ROCHA DOS SANTOS', '74289', 'lrocha@positivo.com.br', '5534984079841', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS WENDERSON DE SANDES PEREIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '71265', 
            email = 'lucasp@positivo.com.br', 
            celular_corporativo = '5531997211034', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUCAS WENDERSON DE SANDES PEREIRA', '71265', 'lucasp@positivo.com.br', '5531997211034', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIS GUSTAVO DE SOUZA CARVALHO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72610', 
            email = 'luis.carvalho@positivo.com.br', 
            celular_corporativo = '55319 9533-5621', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUIS GUSTAVO DE SOUZA CARVALHO', '72610', 'luis.carvalho@positivo.com.br', '55319 9533-5621', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUISA DIAS SPIRITO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75259', 
            email = 'LUISAD@POSITIVO.COM.BR', 
            celular_corporativo = '(31) 99579-9089', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUISA DIAS SPIRITO', '75259', 'LUISAD@POSITIVO.COM.BR', '(31) 99579-9089', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIZ FELIPE COELHO DE OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60954', 
            email = 'luiz.oliveira@positivo.com.br', 
            celular_corporativo = '5531999162026', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUIZ FELIPE COELHO DE OLIVEIRA', '60954', 'luiz.oliveira@positivo.com.br', '5531999162026', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIZ HENRIQUE VILABOIM DE OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'luizo@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUIZ HENRIQUE VILABOIM DE OLIVEIRA', NULL, 'luizo@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCOS DIAS DE SALES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74293', 
            email = 'marcos.sales@positivo.com.br', 
            celular_corporativo = '5534999480059', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCOS DIAS DE SALES', '74293', 'marcos.sales@positivo.com.br', '5534999480059', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCOS POTROS GUILARDUCCI') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74821', 
            email = 'MARCOS.GUILARDUCCI@POSITIVO.COM.BR', 
            celular_corporativo = '(31) 99942-7680', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCOS POTROS GUILARDUCCI', '74821', 'MARCOS.GUILARDUCCI@POSITIVO.COM.BR', '(31) 99942-7680', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MATHEUS HENRIQUE RIBEIRO DE SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MATHEUS HENRIQUE RIBEIRO DE SOUZA', NULL, NULL, NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ONYALAN SILVA ALMEIDA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74284', 
            email = 'onyalan.almeida@positivo.com.br', 
            celular_corporativo = '5591991976368', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ONYALAN SILVA ALMEIDA', '74284', 'onyalan.almeida@positivo.com.br', '5591991976368', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('PABLO LUCAS DE MELO SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60891', 
            email = 'pablo.silva@positivo.com.br', 
            celular_corporativo = '553498407-9841', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('PABLO LUCAS DE MELO SILVA', '60891', 'pablo.silva@positivo.com.br', '553498407-9841', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO VICTOR ANDRADE MOTA VAZ') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72959', 
            email = 'paulov@positivo.com.br', 
            celular_corporativo = '5531995039532', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('PAULO VICTOR ANDRADE MOTA VAZ', '72959', 'paulov@positivo.com.br', '5531995039532', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('PEDRO HENRIQUE ALVERNAZ DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '266679', 
            email = 'pedro.alvernaz@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('PEDRO HENRIQUE ALVERNAZ DOS SANTOS', '266679', 'pedro.alvernaz@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('PEDRO HENRIQUE CHAGAS VIANA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'pedro.viana@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('PEDRO HENRIQUE CHAGAS VIANA', NULL, 'pedro.viana@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RAQUEL DE OLIVEIRA MORATO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60957', 
            email = 'raquel.morato@positivo.com.br', 
            celular_corporativo = '55319 97519715', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RAQUEL DE OLIVEIRA MORATO', '60957', 'raquel.morato@positivo.com.br', '55319 97519715', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RENATO MARCOS DE SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72464', 
            email = 'renato.souza@positivo.com.br', 
            celular_corporativo = '5531984093124', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RENATO MARCOS DE SOUZA', '72464', 'renato.souza@positivo.com.br', '5531984093124', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RICARDO OLIVEIRA LIMA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60404', 
            email = 'ricardol@positivo.com.br', 
            celular_corporativo = '(38) 99835-0626', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RICARDO OLIVEIRA LIMA', '60404', 'ricardol@positivo.com.br', '(38) 99835-0626', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('SERGIO HENRIQUE BRAGA RIBEIRO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60904', 
            email = 'sergio.ribeiro@positivo.com.br', 
            celular_corporativo = '5535998892729', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('SERGIO HENRIQUE BRAGA RIBEIRO', '60904', 'sergio.ribeiro@positivo.com.br', '5535998892729', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('THIAGO ARAUJO DE FARIA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72608', 
            email = 'thiago.faria@positivo.com.br', 
            celular_corporativo = '5511942861924', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('THIAGO ARAUJO DE FARIA', '72608', 'thiago.faria@positivo.com.br', '5511942861924', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('THIAGO PEREIRA DE CASTRO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74286', 
            email = 'thiago.castro@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('THIAGO PEREIRA DE CASTRO', '74286', 'thiago.castro@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VINICIUS MENEZES GOMES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74287', 
            email = 'vinicius.gomes@positivo.com.br', 
            celular_corporativo = '5531992691176', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VINICIUS MENEZES GOMES', '74287', 'vinicius.gomes@positivo.com.br', '5531992691176', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VITOR PEREIRA ADRIANO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73672', 
            email = 'vitorp@positivo.com.br', 
            celular_corporativo = '5531996489903', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VITOR PEREIRA ADRIANO', '73672', 'vitorp@positivo.com.br', '5531996489903', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WASHINGTON LUIZ PERTUSSATI') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'wluiz@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WASHINGTON LUIZ PERTUSSATI', NULL, 'wluiz@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WILLIAM LUCAS DE OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75523', 
            email = 'williamo@positivo.com.br', 
            celular_corporativo = 'AG. INFORMAÇÃO', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WILLIAM LUCAS DE OLIVEIRA', '75523', 'williamo@positivo.com.br', 'AG. INFORMAÇÃO', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JAIRO EDUARDO LOPES LANDIM') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74471', 
            email = 'jairoe@positivo.com.br', 
            celular_corporativo = '5565992129736', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JAIRO EDUARDO LOPES LANDIM', '74471', 'jairoe@positivo.com.br', '5565992129736', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('NICIAS FREDERICO LONDON GOMES DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75503', 
            email = 'NICIASS@POSITIVO.COM.BR', 
            celular_corporativo = '66 9726 4495', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('NICIAS FREDERICO LONDON GOMES DA SILVA', '75503', 'NICIASS@POSITIVO.COM.BR', '66 9726 4495', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('OLIABE MOURA CASTRO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74929', 
            email = 'oliabec@positivo.com.br', 
            celular_corporativo = '5566992490219', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('OLIABE MOURA CASTRO', '74929', 'oliabec@positivo.com.br', '5566992490219', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WAGNER PEREIRA ALVES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'wagner.alves@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WAGNER PEREIRA ALVES', NULL, 'wagner.alves@positivo.com.br', NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WANDERSON DOS SANTOS GONÇALVES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74473', 
            email = 'wanderson.goncalves@positivo.com.br', 
            celular_corporativo = '5565992147075', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WANDERSON DOS SANTOS GONÇALVES', '74473', 'wanderson.goncalves@positivo.com.br', '5565992147075', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('CARLOS HENRIQUE ALVES OLIVEIRA MACAIBA DE SOUSA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72542', 
            email = 'carlosh@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('CARLOS HENRIQUE ALVES OLIVEIRA MACAIBA DE SOUSA', '72542', 'carlosh@positivo.com.br', NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('CHARLES PEREIRA DANTAS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73257', 
            email = 'charles.dantas@positivo.com.br', 
            celular_corporativo = '5582981455136', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('CHARLES PEREIRA DANTAS', '73257', 'charles.dantas@positivo.com.br', '5582981455136', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DAVI ANDERSON COSTA DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72539', 
            email = 'DAVI.SANTOS@POSITIVO.COM.BR', 
            celular_corporativo = '-', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DAVI ANDERSON COSTA DOS SANTOS', '72539', 'DAVI.SANTOS@POSITIVO.COM.BR', '-', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JORGE HENRIQUE FERNANDES NUNES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '59746', 
            email = 'JNUNES@POSITIVO.COM.BR', 
            celular_corporativo = '41 992907230', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JORGE HENRIQUE FERNANDES NUNES', '59746', 'JNUNES@POSITIVO.COM.BR', '41 992907230', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('PEDRO MARTINIANO PEREIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72395', 
            email = 'pmartiniano@positivo.com.br', 
            celular_corporativo = '5541991882728', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('PEDRO MARTINIANO PEREIRA', '72395', 'pmartiniano@positivo.com.br', '5541991882728', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VANDEBERGER EUSTAQUILINO PEREIRA DE SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75220', 
            email = 'vandebergere@positivo.com.br', 
            celular_corporativo = '5583981958638', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VANDEBERGER EUSTAQUILINO PEREIRA DE SOUZA', '75220', 'vandebergere@positivo.com.br', '5583981958638', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('EDILSON CARLOS DE SA NEVES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74285', 
            email = 'edilsonc@positivo.com.br', 
            celular_corporativo = '5587996364060', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('EDILSON CARLOS DE SA NEVES', '74285', 'edilsonc@positivo.com.br', '5587996364060', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('EDUARDO LUIZ DE OLIVEIRA DIAS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '59794', 
            email = 'eduardod@positivo.com.br', 
            celular_corporativo = '5541991683868', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('EDUARDO LUIZ DE OLIVEIRA DIAS', '59794', 'eduardod@positivo.com.br', '5541991683868', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('EDUARDO LUIZ MORAES DA COSTA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72330', 
            email = 'eduardoc@positivo.com.br', 
            celular_corporativo = '5581999436600', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('EDUARDO LUIZ MORAES DA COSTA', '72330', 'eduardoc@positivo.com.br', '5581999436600', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('FERNANDO ANTONIO DE ALMEIDA LIMA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74728', 
            email = 'FERNANDO.LIMA@POSITIVO.COM.BR', 
            celular_corporativo = '41 9136-4085', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('FERNANDO ANTONIO DE ALMEIDA LIMA', '74728', 'FERNANDO.LIMA@POSITIVO.COM.BR', '41 9136-4085', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JADSON FERREIRA NEVES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74355', 
            email = 'jadsonf@positivo.com.br', 
            celular_corporativo = '5541992163876', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JADSON FERREIRA NEVES', '74355', 'jadsonf@positivo.com.br', '5541992163876', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOELSON PEREIRA DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'joelson.silva@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOELSON PEREIRA DA SILVA', NULL, 'joelson.silva@positivo.com.br', NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOHNSON PESSOA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74476', 
            email = 'johnsons@positivo.com.br', 
            celular_corporativo = '5511950791506', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOHNSON PESSOA SILVA', '74476', 'johnsons@positivo.com.br', '5511950791506', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JONATHAN FELIPE AVELINO ANDRE GOMES WAVRIK') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73371', 
            email = 'jonathan.wavr@positivo.com.br', 
            celular_corporativo = '5541992317503', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JONATHAN FELIPE AVELINO ANDRE GOMES WAVRIK', '73371', 'jonathan.wavr@positivo.com.br', '5541992317503', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOSÉ HENRIQUE DA SILVA RAMOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74351', 
            email = 'joser@positivo.com.br', 
            celular_corporativo = '5581998629106', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOSÉ HENRIQUE DA SILVA RAMOS', '74351', 'joser@positivo.com.br', '5581998629106', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('KAIO KORION SOARES ACCIOLY LINS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '71069', 
            email = 'kaiok@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('KAIO KORION SOARES ACCIOLY LINS', '71069', 'kaiok@positivo.com.br', NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIZ RICARDO VIANA DE MELO FILHO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'lfilho@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUIZ RICARDO VIANA DE MELO FILHO', NULL, 'lfilho@positivo.com.br', NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCIO ANDRE RODRIGUES SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75148', 
            email = 'MARCIO.SOUZA@POSITIVO.COM.BR', 
            celular_corporativo = '81 981521069', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCIO ANDRE RODRIGUES SOUZA', '75148', 'MARCIO.SOUZA@POSITIVO.COM.BR', '81 981521069', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCIO ANDRÉ RODRIGUES SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCIO ANDRÉ RODRIGUES SOUZA', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ROBSON NEGROMONTE VASCONCELOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '59886', 
            email = 'rvasconcelos@positivo.com.br', 
            celular_corporativo = '5541991064217', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ROBSON NEGROMONTE VASCONCELOS', '59886', 'rvasconcelos@positivo.com.br', '5541991064217', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('THIAGO RODRIGO DE AQUINO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75037', 
            email = 'thiago.aquino@positivo.com.br', 
            celular_corporativo = '5587999803395', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('THIAGO RODRIGO DE AQUINO', '75037', 'thiago.aquino@positivo.com.br', '5587999803395', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('CHARLES ADRIANO HACK') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '71243', 
            email = 'charlesh@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Joao Ribeiro De Oliveira Neto', 
            email_coordenador = 'joaor@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('CHARLES ADRIANO HACK', '71243', 'charlesh@positivo.com.br', NULL, 'Joao Ribeiro De Oliveira Neto', 'joaor@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('CLEIDE MANJURA DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '49777', 
            email = 'CLEIDES@POSITIVO.COM.BR', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Joao Ribeiro De Oliveira Neto', 
            email_coordenador = 'joaor@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('CLEIDE MANJURA DOS SANTOS', '49777', 'CLEIDES@POSITIVO.COM.BR', NULL, 'Joao Ribeiro De Oliveira Neto', 'joaor@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DANIEL JOSE BISPO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73732', 
            email = 'daniel.bispo@positivo.com.br', 
            celular_corporativo = '-', 
            nome_coordenador = 'Joao Ribeiro De Oliveira Neto', 
            email_coordenador = 'joaor@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DANIEL JOSE BISPO', '73732', 'daniel.bispo@positivo.com.br', '-', 'Joao Ribeiro De Oliveira Neto', 'joaor@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL LEONARDO ZIMMERMANN ALVES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74170', 
            email = 'gabriel.alves@positivo.com.br', 
            celular_corporativo = '-', 
            nome_coordenador = 'Joao Ribeiro De Oliveira Neto', 
            email_coordenador = 'joaor@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GABRIEL LEONARDO ZIMMERMANN ALVES', '74170', 'gabriel.alves@positivo.com.br', '-', 'Joao Ribeiro De Oliveira Neto', 'joaor@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JONAS FILIPE DO NASCIMENTO SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = '-', 
            nome_coordenador = 'Joao Ribeiro De Oliveira Neto', 
            email_coordenador = 'joaor@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JONAS FILIPE DO NASCIMENTO SILVA', NULL, NULL, '-', 'Joao Ribeiro De Oliveira Neto', 'joaor@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCOS RODRIGUES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60047', 
            email = 'mrodrigues@positivo.com.br', 
            celular_corporativo = '-', 
            nome_coordenador = 'Joao Ribeiro De Oliveira Neto', 
            email_coordenador = 'joaor@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCOS RODRIGUES', '60047', 'mrodrigues@positivo.com.br', '-', 'Joao Ribeiro De Oliveira Neto', 'joaor@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RODRIGO RODRIGUES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '45447', 
            email = 'rrodrigues@positivo.com.br', 
            celular_corporativo = '-', 
            nome_coordenador = 'Joao Ribeiro De Oliveira Neto', 
            email_coordenador = 'joaor@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RODRIGO RODRIGUES', '45447', 'rrodrigues@positivo.com.br', '-', 'Joao Ribeiro De Oliveira Neto', 'joaor@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VINICIUS EDUARDO FIOR SCARPETA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74324', 
            email = 'vinicius.scarpeta@positivo.com.br', 
            celular_corporativo = '-', 
            nome_coordenador = 'Joao Ribeiro De Oliveira Neto', 
            email_coordenador = 'joaor@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VINICIUS EDUARDO FIOR SCARPETA', '74324', 'vinicius.scarpeta@positivo.com.br', '-', 'Joao Ribeiro De Oliveira Neto', 'joaor@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('AMAURY DE FREITAS GOMES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'amauryf@positivo.com.br', 
            celular_corporativo = '41-991058337', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('AMAURY DE FREITAS GOMES', NULL, 'amauryf@positivo.com.br', '41-991058337', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ARNILDO KAMIEN JUNIOR') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '71575', 
            email = 'arnildok@positivo.com.br', 
            celular_corporativo = '5541992058997', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ARNILDO KAMIEN JUNIOR', '71575', 'arnildok@positivo.com.br', '5541992058997', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNNO NICOLAS DE MATTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'brunno.mattos@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('BRUNNO NICOLAS DE MATTOS', NULL, 'brunno.mattos@positivo.com.br', NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DANIEL GARCIA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74296', 
            email = 'daniel.garcia@positivo.com.br', 
            celular_corporativo = '5541991164823', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DANIEL GARCIA', '74296', 'daniel.garcia@positivo.com.br', '5541991164823', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('FERNANDO YUTAKA ITO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('FERNANDO YUTAKA ITO', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GUILHERME DE OLIVEIRA SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '59881', 
            email = 'guilhermeos@positivo.com.br', 
            celular_corporativo = '5541992806526', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GUILHERME DE OLIVEIRA SOUZA', '59881', 'guilhermeos@positivo.com.br', '5541992806526', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('HAMILTON ALEXANDRINO DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60094', 
            email = 'hsantos@positivo.com.br', 
            celular_corporativo = '5541991950238', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('HAMILTON ALEXANDRINO DOS SANTOS', '60094', 'hsantos@positivo.com.br', '5541991950238', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JAILSON DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73674', 
            email = 'jailson.santos@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JAILSON DOS SANTOS', '73674', 'jailson.santos@positivo.com.br', NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JEAN FRANCISCO MIGUEL DE ANDRADE') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75147', 
            email = 'JEAN.ANDRADE@POSITIVO.COM.BR', 
            celular_corporativo = '41 91023509', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JEAN FRANCISCO MIGUEL DE ANDRADE', '75147', 'JEAN.ANDRADE@POSITIVO.COM.BR', '41 91023509', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS DE OLIVEIRA TEIXEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60766', 
            email = 'lucaso@positivo.com.br', 
            celular_corporativo = '5592994074406', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUCAS DE OLIVEIRA TEIXEIRA', '60766', 'lucaso@positivo.com.br', '5592994074406', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCIANO DIAS DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60061', 
            email = 'lucianod@positivo.com.br', 
            celular_corporativo = '5541991093441', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUCIANO DIAS DA SILVA', '60061', 'lucianod@positivo.com.br', '5541991093441', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCELO DE SOUZA MACHADO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75501', 
            email = 'mmachado@positivo.com.br', 
            celular_corporativo = '41 991866901', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCELO DE SOUZA MACHADO', '75501', 'mmachado@positivo.com.br', '41 991866901', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCIO ROBERTO GARBUIO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = '-', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCIO ROBERTO GARBUIO', NULL, NULL, '-', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('NEI DE LIMA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74295', 
            email = 'nei.lima@positivo.com.br', 
            celular_corporativo = '5541999538533', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('NEI DE LIMA', '74295', 'nei.lima@positivo.com.br', '5541999538533', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RODRIGO PINHEIRO MARTINS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '71232', 
            email = 'rmartins@positivo.com.br', 
            celular_corporativo = '5541991360895', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RODRIGO PINHEIRO MARTINS', '71232', 'rmartins@positivo.com.br', '5541991360895', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ROSÉLIO JANTARA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72467', 
            email = 'rjantara@positivo.com.br', 
            celular_corporativo = '5541991474436', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ROSÉLIO JANTARA', '72467', 'rjantara@positivo.com.br', '5541991474436', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RYAN GABRIEL SKALECKI MARQUES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72570', 
            email = 'ryang@positivo.com.br', 
            celular_corporativo = '5541991577161', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RYAN GABRIEL SKALECKI MARQUES', '72570', 'ryang@positivo.com.br', '5541991577161', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WESLEY GONÇALVES DE OLIVEIRA DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72964', 
            email = 'wesley.silva@positivo.com.br', 
            celular_corporativo = '5541998127447', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WESLEY GONÇALVES DE OLIVEIRA DA SILVA', '72964', 'wesley.silva@positivo.com.br', '5541998127447', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ADRIANO DE CARVALHO MACHADO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = 'DESLIGADO', 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ADRIANO DE CARVALHO MACHADO', 'DESLIGADO', NULL, NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ANTÔNIO CARLOS LEITE DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73034', 
            email = 'acarlos@positivo.com.br', 
            celular_corporativo = '5521990639002', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ANTÔNIO CARLOS LEITE DA SILVA', '73034', 'acarlos@positivo.com.br', '5521990639002', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('CLEISON LIMA DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '70694', 
            email = 'CLEISONS@POSITIVO.COM.BR', 
            celular_corporativo = '21 972009516', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('CLEISON LIMA DA SILVA', '70694', 'CLEISONS@POSITIVO.COM.BR', '21 972009516', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('EDUARDO TOLC POLITI') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('EDUARDO TOLC POLITI', NULL, NULL, NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('FABIANO FERREIRA DO AMARAL') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'fabiano.amaral@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('FABIANO FERREIRA DO AMARAL', NULL, 'fabiano.amaral@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('HUGO LEONARDO DA SILVA RODRIGUES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75247', 
            email = 'HUGOL@POSITIVO.COM.BR', 
            celular_corporativo = '41 92414327', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('HUGO LEONARDO DA SILVA RODRIGUES', '75247', 'HUGOL@POSITIVO.COM.BR', '41 92414327', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOÃO HENRIQUE DE ANDRADE FIDELIS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75038', 
            email = 'joaof@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOÃO HENRIQUE DE ANDRADE FIDELIS', '75038', 'joaof@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JULIANA LIMA DA COSTA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75155', 
            email = 'JULIANA.LIMA@POSITIVO.COM.BR', 
            celular_corporativo = '21 996295713', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JULIANA LIMA DA COSTA', '75155', 'JULIANA.LIMA@POSITIVO.COM.BR', '21 996295713', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MAGNO ALEXANDRE DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MAGNO ALEXANDRE DA SILVA', NULL, NULL, NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCELO LADI DE LIMA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '71066', 
            email = 'mladi@positivo.com.br', 
            celular_corporativo = '5521996796921', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCELO LADI DE LIMA', '71066', 'mladi@positivo.com.br', '5521996796921', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCIO DA SILVA EDUARDO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72916', 
            email = 'marcioe@positivo.com.br', 
            celular_corporativo = '5521998276598', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCIO DA SILVA EDUARDO', '72916', 'marcioe@positivo.com.br', '5521998276598', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCIO LUIS PEREIRA DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73092', 
            email = 'marciol@positivo.com.br', 
            celular_corporativo = '5521996435752', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCIO LUIS PEREIRA DOS SANTOS', '73092', 'marciol@positivo.com.br', '5521996435752', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RICARDO ALEXANDRE DA SILVA SCHIMIDT') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'ricardo.schimidt@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RICARDO ALEXANDRE DA SILVA SCHIMIDT', NULL, 'ricardo.schimidt@positivo.com.br', NULL, 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ROBSON DA SILVA CASTRO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '71544', 
            email = 'robsons@positivo.com.br', 
            celular_corporativo = '5541992289621', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ROBSON DA SILVA CASTRO', '71544', 'robsons@positivo.com.br', '5541992289621', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VALERIA BARBOSA MONTEZUMA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74352', 
            email = 'vanessa.silva@positivo.com.br', 
            celular_corporativo = '5521996435894', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VALERIA BARBOSA MONTEZUMA', '74352', 'vanessa.silva@positivo.com.br', '5521996435894', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WILLIAM EDUARDO ABREU DE SANT ANNA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73425', 
            email = 'william.anna@positivo.com.br', 
            celular_corporativo = '5541991692758', 
            nome_coordenador = 'Mauricio Antonio De Castro Alves Junior', 
            email_coordenador = 'mauricio.junior@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WILLIAM EDUARDO ABREU DE SANT ANNA', '73425', 'william.anna@positivo.com.br', '5541991692758', 'Mauricio Antonio De Castro Alves Junior', 'mauricio.junior@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIZ CLAUDIO DE OLIVEIRA LESSA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '59747', 
            email = 'luizl@positivo.com.br', 
            celular_corporativo = '5584988647404', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUIZ CLAUDIO DE OLIVEIRA LESSA', '59747', 'luizl@positivo.com.br', '5584988647404', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MUNIZ ALBINO DA SILVA FILHO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74299', 
            email = 'munizf@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MUNIZ ALBINO DA SILVA FILHO', '74299', 'munizf@positivo.com.br', NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DHIONE PABULO ALVES DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72754', 
            email = 'DHIONES@POSITIVO.COM.BR', 
            celular_corporativo = '41 9 91879226', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DHIONE PABULO ALVES DOS SANTOS', '72754', 'DHIONES@POSITIVO.COM.BR', '41 9 91879226', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ERICLES GOMES DE ARAUJO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ERICLES GOMES DE ARAUJO', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GEOVANE NOLASCO BIZERRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74290', 
            email = 'geovane.bizerra@positivo.com.br', 
            celular_corporativo = '5541992488680', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GEOVANE NOLASCO BIZERRA', '74290', 'geovane.bizerra@positivo.com.br', '5541992488680', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIS CARLOS DE ARAUJO JACARANDA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '71361', 
            email = 'LUIS.JACARANDA@POSITIVO.COM.BR', 
            celular_corporativo = '5569993377257', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUIS CARLOS DE ARAUJO JACARANDA', '71361', 'LUIS.JACARANDA@POSITIVO.COM.BR', '5569993377257', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('FABIO CEZIMBRA RUBO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60106', 
            email = 'fabioc@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('FABIO CEZIMBRA RUBO', '60106', 'fabioc@positivo.com.br', NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('FILIPE DE LIMA NUNES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74702', 
            email = 'filipe.nunes@positivo.com.br', 
            celular_corporativo = '5553997031399', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('FILIPE DE LIMA NUNES', '74702', 'filipe.nunes@positivo.com.br', '5553997031399', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GUILHERME DE MATOS PAIVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74297', 
            email = 'guilherme.paiva@positivo.com.br', 
            celular_corporativo = '5548988644663', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GUILHERME DE MATOS PAIVA', '74297', 'guilherme.paiva@positivo.com.br', '5548988644663', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('IAGNER RUVIARO CARDOSO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75059', 
            email = 'iagner.cardoso@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('IAGNER RUVIARO CARDOSO', '75059', 'iagner.cardoso@positivo.com.br', NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LEONARD NUCCI DE OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LEONARD NUCCI DE OLIVEIRA', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LEONARDO GOMES MONTEIRO MIGUEIS CERQUEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = '-', 
            celular_corporativo = '-', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LEONARDO GOMES MONTEIRO MIGUEIS CERQUEIRA', NULL, '-', '-', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LILIAN FURTADO FIGUEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LILIAN FURTADO FIGUEIRA', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIZ FELIPE PEDROSO DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72455', 
            email = 'luizs@positivo.com.br', 
            celular_corporativo = '5541992054675', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUIZ FELIPE PEDROSO DA SILVA', '72455', 'luizs@positivo.com.br', '5541992054675', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCELO VARGAS DA SILVA JUNIOR') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCELO VARGAS DA SILVA JUNIOR', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO CEZAR DA ROSA FILHO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74357', 
            email = 'pcezar@positivo.com.br', 
            celular_corporativo = '5551991826141', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('PAULO CEZAR DA ROSA FILHO', '74357', 'pcezar@positivo.com.br', '5551991826141', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RAFAEL SILVA DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74468', 
            email = 'rafaelss@positivo.com.br', 
            celular_corporativo = '5551992434424', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RAFAEL SILVA DA SILVA', '74468', 'rafaelss@positivo.com.br', '5551992434424', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RODOLFO DE OLIVEIRA VICENTE') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = '-', 
            celular_corporativo = '-', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RODOLFO DE OLIVEIRA VICENTE', NULL, '-', '-', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VAGNER SILVA RESER') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = '-', 
            celular_corporativo = '-', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VAGNER SILVA RESER', NULL, '-', '-', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VINICIUS ESTEVAO LIMA PINTO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VINICIUS ESTEVAO LIMA PINTO', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VITOR RAPHAEL NELSON SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75231', 
            email = 'LNELSON@POSITIVO.COM.BR', 
            celular_corporativo = '-', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VITOR RAPHAEL NELSON SANTOS', '75231', 'LNELSON@POSITIVO.COM.BR', '-', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WESLEN BACCHI') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WESLEN BACCHI', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ADRIANO FERREIRA BEZERRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73416', 
            email = 'adrianof@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ADRIANO FERREIRA BEZERRA', '73416', 'adrianof@positivo.com.br', NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO DE ANHAIA MILER') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74496', 
            email = 'bruno.miler@positivo.com.br', 
            celular_corporativo = '5541991658018', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('BRUNO DE ANHAIA MILER', '74496', 'bruno.miler@positivo.com.br', '5541991658018', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO GOMES KRAETZIG') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72468', 
            email = 'brunok@positivo.com.br', 
            celular_corporativo = '5541991529263', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('BRUNO GOMES KRAETZIG', '72468', 'brunok@positivo.com.br', '5541991529263', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('CALONE RODRIGUES HALENSA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = '-', 
            celular_corporativo = '-', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('CALONE RODRIGUES HALENSA', NULL, '-', '-', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DIEGO CLAUDELER FRANCISCO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60607', 
            email = 'diegoc@positivo.com.br', 
            celular_corporativo = '5541991866901', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DIEGO CLAUDELER FRANCISCO', '60607', 'diegoc@positivo.com.br', '5541991866901', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('EMERSON FRANCA DE SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72706', 
            email = 'emerson.souza@positivo.com.br', 
            celular_corporativo = '5541991229128', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('EMERSON FRANCA DE SOUZA', '72706', 'emerson.souza@positivo.com.br', '5541991229128', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JAISON SALVADOR') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JAISON SALVADOR', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JONATHAN RABELO COSTA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = '-', 
            celular_corporativo = '-', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JONATHAN RABELO COSTA', NULL, '-', '-', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JORGE LUIZ BENETTI') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JORGE LUIZ BENETTI', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JUAN VITOR') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75045', 
            email = 'juanv@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JUAN VITOR', '75045', 'juanv@positivo.com.br', NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LEANDRO DE SOUZA OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74294', 
            email = 'leandro.oliveira@positivo.com.br', 
            celular_corporativo = '5551995210567', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LEANDRO DE SOUZA OLIVEIRA', '74294', 'leandro.oliveira@positivo.com.br', '5551995210567', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LEONARDO DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60507', 
            email = 'lssantos@positivo.com.br', 
            celular_corporativo = '5541992791762', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LEONARDO DOS SANTOS', '60507', 'lssantos@positivo.com.br', '5541992791762', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIZ FELIPE SARTOR GÓES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = '-', 
            celular_corporativo = '-', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUIZ FELIPE SARTOR GÓES', NULL, '-', '-', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO ROBERTO MARCON') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = '-', 
            celular_corporativo = '-', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('PAULO ROBERTO MARCON', NULL, '-', '-', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('PETERSON DIEGO DA MOTA RAMOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('PETERSON DIEGO DA MOTA RAMOS', NULL, NULL, NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ABRAAO LINCOLN FONSECA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'abraaolfonseca@gmail.com', 
            celular_corporativo = '(17) 98145-5266', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ABRAAO LINCOLN FONSECA', NULL, 'abraaolfonseca@gmail.com', '(17) 98145-5266', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ADEMIR BORGES DE SOUZA JUNIOR') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'ademirj@positivo.com.br', 
            celular_corporativo = '(11) 99287-2477', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ADEMIR BORGES DE SOUZA JUNIOR', NULL, 'ademirj@positivo.com.br', '(11) 99287-2477', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ADEMIR PEREIRA DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74362', 
            email = 'ademir.silva@positivo.com.br', 
            celular_corporativo = '(11) 98177-2280', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ADEMIR PEREIRA DA SILVA', '74362', 'ademir.silva@positivo.com.br', '(11) 98177-2280', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ADRIANO CESAR RIBAS ZAFFALON') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'aczaffalon@gmail.com', 
            celular_corporativo = '(11) 95803-9028', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ADRIANO CESAR RIBAS ZAFFALON', NULL, 'aczaffalon@gmail.com', '(11) 95803-9028', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ADRIEL FELIPE DA SILVA DE OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'adriel.oliveira@positivo.com.br', 
            celular_corporativo = '(16) 98147-0361', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ADRIEL FELIPE DA SILVA DE OLIVEIRA', NULL, 'adriel.oliveira@positivo.com.br', '(16) 98147-0361', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ALESSANDRA DE FATIMA FERREIRA LOPES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'alessandra.lopes@positivo.com.br', 
            celular_corporativo = '(11) 97565-2115', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ALESSANDRA DE FATIMA FERREIRA LOPES', NULL, 'alessandra.lopes@positivo.com.br', '(11) 97565-2115', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ALEX PEREIRA BASTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'alex.bastos@positivo.com.br', 
            celular_corporativo = '(11) 91399-0937', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ALEX PEREIRA BASTOS', NULL, 'alex.bastos@positivo.com.br', '(11) 91399-0937', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ALEXANDRE MATIAS CARVALHO LIMA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'amatias@positivo.com.br', 
            celular_corporativo = '(21) 99129-2498', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ALEXANDRE MATIAS CARVALHO LIMA', NULL, 'amatias@positivo.com.br', '(21) 99129-2498', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ALFREDO SARETTA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'asaretta450@gmail.com', 
            celular_corporativo = '(16) 99609-8779', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ALFREDO SARETTA', NULL, 'asaretta450@gmail.com', '(16) 99609-8779', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ALISSON MATOS DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75217', 
            email = 'alisson.santos@positivo.com.br', 
            celular_corporativo = '(11) 97372-5291', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ALISSON MATOS DOS SANTOS', '75217', 'alisson.santos@positivo.com.br', '(11) 97372-5291', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ANDERSON FARIAS VIEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74733', 
            email = 'anderson.vieira@positivo.com.br', 
            celular_corporativo = '(11) 99475-5078', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ANDERSON FARIAS VIEIRA', '74733', 'anderson.vieira@positivo.com.br', '(11) 99475-5078', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ANDRE PANIZZA DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74365', 
            email = 'andre.santos@positivo.com.br', 
            celular_corporativo = '(11) 94159-9047', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ANDRE PANIZZA DOS SANTOS', '74365', 'andre.santos@positivo.com.br', '(11) 94159-9047', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ANDRE QUEIROZ BARROS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'andre.barros@positivo.com.br', 
            celular_corporativo = '(11) 95851-1989', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ANDRE QUEIROZ BARROS', NULL, 'andre.barros@positivo.com.br', '(11) 95851-1989', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ANTONIO FAGNER BASTOS DE SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'antelitechnology@outlook.com', 
            celular_corporativo = '(11) 91627-7847', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ANTONIO FAGNER BASTOS DE SOUZA', NULL, 'antelitechnology@outlook.com', '(11) 91627-7847', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ANTONIO JOSE SALLUM ALOSTA FILHO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'sallum@outlook.com.br', 
            celular_corporativo = '(35) 99671-2228', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ANTONIO JOSE SALLUM ALOSTA FILHO', NULL, 'sallum@outlook.com.br', '(35) 99671-2228', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ANTONIO RODRIGO SILVA GOMES DE OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'antonio.oliveira@positivo.com.br', 
            celular_corporativo = '11 97137-7194', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ANTONIO RODRIGO SILVA GOMES DE OLIVEIRA', NULL, 'antonio.oliveira@positivo.com.br', '11 97137-7194', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('BIANCA CRISTINA GOMES DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'bianca.eb0705@gmail.com', 
            celular_corporativo = '(11) 95796-5718', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('BIANCA CRISTINA GOMES DA SILVA', NULL, 'bianca.eb0705@gmail.com', '(11) 95796-5718', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO CORREIA DE OLIVEIRA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'bruno.co.silva@icloud.com', 
            celular_corporativo = '(11) 97126-2255', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('BRUNO CORREIA DE OLIVEIRA SILVA', NULL, 'bruno.co.silva@icloud.com', '(11) 97126-2255', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO FERNANDES DE FREITAS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73005', 
            email = 'bruno.freitas@positivo.com.br', 
            celular_corporativo = '(41) 99237-3450', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('BRUNO FERNANDES DE FREITAS', '73005', 'bruno.freitas@positivo.com.br', '(41) 99237-3450', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO MAJORES RELA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72306', 
            email = 'bmajores@positivo.com.br', 
            celular_corporativo = '(11) 95160-2665', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('BRUNO MAJORES RELA', '72306', 'bmajores@positivo.com.br', '(11) 95160-2665', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO RAFAEL NASCIMENTO GONCALVES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'brafael@positivo.com.br', 
            celular_corporativo = '(19) 98272-7206', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('BRUNO RAFAEL NASCIMENTO GONCALVES', NULL, 'brafael@positivo.com.br', '(19) 98272-7206', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO RIBEIRO DE OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74479', 
            email = 'brunotinf@gmail.com', 
            celular_corporativo = '(14) 99623-3156', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('BRUNO RIBEIRO DE OLIVEIRA', '74479', 'brunotinf@gmail.com', '(14) 99623-3156', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('BRUNO WESLEY DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74366', 
            email = 'bwesley@positivo.com.br', 
            celular_corporativo = '(11) 96170-1054', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('BRUNO WESLEY DA SILVA', '74366', 'bwesley@positivo.com.br', '(11) 96170-1054', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('CAIO CESAR OLIVEIRA DE SOUSA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'caio.sousa@positivo.com.br', 
            celular_corporativo = '(18) 99733-5553', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('CAIO CESAR OLIVEIRA DE SOUSA', NULL, 'caio.sousa@positivo.com.br', '(18) 99733-5553', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('CAIO SCARABEL FERREIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74480', 
            email = 'caio.ferreira@positivo.com.br', 
            celular_corporativo = '(11) 98506-3679', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('CAIO SCARABEL FERREIRA', '74480', 'caio.ferreira@positivo.com.br', '(11) 98506-3679', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('CAIQUE RIBEIRO DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74907', 
            email = 'Caique.r.santtos@gmail.com', 
            celular_corporativo = '(11) 96946-7088', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('CAIQUE RIBEIRO DOS SANTOS', '74907', 'Caique.r.santtos@gmail.com', '(11) 96946-7088', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('CHARLES ROCHA LUZ') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'crocha@positivo.com.br', 
            celular_corporativo = '(14) 99869-6491', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('CHARLES ROCHA LUZ', NULL, 'crocha@positivo.com.br', '(14) 99869-6491', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('CLOVIS OUCHAR JUNIOR') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = '(15) 99186-0596', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('CLOVIS OUCHAR JUNIOR', NULL, NULL, '(15) 99186-0596', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('CRISTIAN LEANDRO DE JESUS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'cristian.jesus@positivo.com.br', 
            celular_corporativo = '(11) 94776-3905', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('CRISTIAN LEANDRO DE JESUS', NULL, 'cristian.jesus@positivo.com.br', '(11) 94776-3905', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DANIEL DA SILVA ANDRADE') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74368', 
            email = 'daniel.andrade@positivo.com.br', 
            celular_corporativo = '(13) 99153-7517', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DANIEL DA SILVA ANDRADE', '74368', 'daniel.andrade@positivo.com.br', '(13) 99153-7517', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DANIEL TRIVELLATO PERINA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'danielp@positivo.com.br', 
            celular_corporativo = '(16) 99600-1985', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DANIEL TRIVELLATO PERINA', NULL, 'danielp@positivo.com.br', '(16) 99600-1985', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DIEGO DIAS FERREIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '60654', 
            email = 'ddias@positivo.com.br', 
            celular_corporativo = '(11) 96382-1270', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DIEGO DIAS FERREIRA', '60654', 'ddias@positivo.com.br', '(11) 96382-1270', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DIEGO SANTANA NEGRAES BARBOZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74735', 
            email = 'dsantana@positivo.com.br', 
            celular_corporativo = '(11) 95433-4186', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DIEGO SANTANA NEGRAES BARBOZA', '74735', 'dsantana@positivo.com.br', '(11) 95433-4186', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DINO MUTTI FORNIELIS LOPES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74481', 
            email = 'dino.lopes@positivo.com.br', 
            celular_corporativo = '41 9206-6105', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DINO MUTTI FORNIELIS LOPES', '74481', 'dino.lopes@positivo.com.br', '41 9206-6105', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DIOGENES TADEU GRACIANO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'diogenes.graciano@positivo.com.br', 
            celular_corporativo = '(11) 99838-3862', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DIOGENES TADEU GRACIANO', NULL, 'diogenes.graciano@positivo.com.br', '(11) 99838-3862', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DIOGO DE SOUZA CECCON') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'dsceccon@positivo.com.br', 
            celular_corporativo = '(19) 99184-8868', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DIOGO DE SOUZA CECCON', NULL, 'dsceccon@positivo.com.br', '(19) 99184-8868', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DOUGLAS JOSE MATOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74370', 
            email = 'douglas.matos@positivo.com.br', 
            celular_corporativo = '(11) 91487-5380', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DOUGLAS JOSE MATOS', '74370', 'douglas.matos@positivo.com.br', '(11) 91487-5380', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DOUGLAS OLIVEIRA SEVERIANO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74125', 
            email = 'douglas.severiano@positivo.com.br', 
            celular_corporativo = '(11) 944467601', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DOUGLAS OLIVEIRA SEVERIANO', '74125', 'douglas.severiano@positivo.com.br', '(11) 944467601', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('DOUGLAS VAZ DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'douglasvaz1987@gmail.com', 
            celular_corporativo = '(11) 96951-9939', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('DOUGLAS VAZ DA SILVA', NULL, 'douglasvaz1987@gmail.com', '(11) 96951-9939', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('EDGAR HENRIQUE NERY') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74371', 
            email = 'edgar.nery@positivo.com.br', 
            celular_corporativo = '(18) 98164-9832', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('EDGAR HENRIQUE NERY', '74371', 'edgar.nery@positivo.com.br', '(18) 98164-9832', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('EDSON ALVES VALADAO FILHO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'edson_valadao@yahoo.com.br', 
            celular_corporativo = '(14) 99766-4901', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('EDSON ALVES VALADAO FILHO', NULL, 'edson_valadao@yahoo.com.br', '(14) 99766-4901', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('EDUARDO ORTOLANI TURCO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'eduardo.turco@positivo.com.br', 
            celular_corporativo = '(16) 99103-1604', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('EDUARDO ORTOLANI TURCO', NULL, 'eduardo.turco@positivo.com.br', '(16) 99103-1604', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ELIAS RODRIGUES BOAVENTURA CUNHA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75055', 
            email = 'eliasc@positivo.com.br', 
            celular_corporativo = '(15) 99134 5870', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ELIAS RODRIGUES BOAVENTURA CUNHA', '75055', 'eliasc@positivo.com.br', '(15) 99134 5870', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ERICK WILLIAMS FERREIRA DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'erick.silva@positivo.com.br', 
            celular_corporativo = '(13) 97818-2112', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ERICK WILLIAMS FERREIRA DA SILVA', NULL, 'erick.silva@positivo.com.br', '(13) 97818-2112', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ERITON OLIVEIRA PINTO DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'eriton.silva@positivo.com.br', 
            celular_corporativo = '(11) 96908-8430', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ERITON OLIVEIRA PINTO DA SILVA', NULL, 'eriton.silva@positivo.com.br', '(11) 96908-8430', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('EULLER DOS SANTOS BATISTA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'euller.batista@positivo.com.br', 
            celular_corporativo = '(14) 99713-8818', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('EULLER DOS SANTOS BATISTA', NULL, 'euller.batista@positivo.com.br', '(14) 99713-8818', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('EVERSON DA SILVA SOARES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74890', 
            email = 'everson.soares@positivo.com.br', 
            celular_corporativo = '11 94456-5763', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('EVERSON DA SILVA SOARES', '74890', 'everson.soares@positivo.com.br', '11 94456-5763', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('FABRICIO FELIPE DOS SANTOS PINTO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'fabriciof@positivo.com.br', 
            celular_corporativo = '(12) 99178-7356', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('FABRICIO FELIPE DOS SANTOS PINTO', NULL, 'fabriciof@positivo.com.br', '(12) 99178-7356', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('FELIPE DE ANAJAZ MARTINS NEIVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'felipe.neiva@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('FELIPE DE ANAJAZ MARTINS NEIVA', NULL, 'felipe.neiva@positivo.com.br', NULL, 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('Felipe Franca Dos Santos') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74770', 
            email = 'felipe.santos@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('Felipe Franca Dos Santos', '74770', 'felipe.santos@positivo.com.br', NULL, 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('Felipe Lopes Dos Santos') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75218', 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('Felipe Lopes Dos Santos', '75218', NULL, NULL, 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('FERNANDO ALVES GALVAO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75262', 
            email = 'fernandoalvesgalvao11@gmail.com', 
            celular_corporativo = '(11) 98427-1679', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('FERNANDO ALVES GALVAO', '75262', 'fernandoalvesgalvao11@gmail.com', '(11) 98427-1679', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('FERNANDO CAMPOS SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74771', 
            email = 'fernandos@positivo.com.br', 
            celular_corporativo = '(11) 98144-8701', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('FERNANDO CAMPOS SOUZA', '74771', 'fernandos@positivo.com.br', '(11) 98144-8701', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('FERNANDO VIEIRA ALMEIDA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74105', 
            email = 'fernando.almeida@positivo.com.br', 
            celular_corporativo = '(11) 96186-2787', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('FERNANDO VIEIRA ALMEIDA', '74105', 'fernando.almeida@positivo.com.br', '(11) 96186-2787', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('FILIPE MIORIN DE LIMA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75054', 
            email = 'filipe.lima@positivo.com.br', 
            celular_corporativo = '(17) 99661-1903', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('FILIPE MIORIN DE LIMA', '75054', 'filipe.lima@positivo.com.br', '(17) 99661-1903', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('FILIPI DE ALMEIDA MAMONI') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73729', 
            email = 'filipi.mamoni@positivo.com.br', 
            celular_corporativo = '(11) 95682-2069', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('FILIPI DE ALMEIDA MAMONI', '73729', 'filipi.mamoni@positivo.com.br', '(11) 95682-2069', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL AMORIM FOGACA DE SOUSA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'gabrielfsousa123@gmail.com', 
            celular_corporativo = '(15) 98828-8107', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GABRIEL AMORIM FOGACA DE SOUSA', NULL, 'gabrielfsousa123@gmail.com', '(15) 98828-8107', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL DE SOUZA NASCIMENTO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74582', 
            email = 'gnascimento@positivo.com.br', 
            celular_corporativo = '(11) 98542-6606', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GABRIEL DE SOUZA NASCIMENTO', '74582', 'gnascimento@positivo.com.br', '(11) 98542-6606', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL JUNQUEIRA LEITE') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74375', 
            email = 'gabriel.leite@positivo.com.br', 
            celular_corporativo = '(11) 98200-7780', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GABRIEL JUNQUEIRA LEITE', '74375', 'gabriel.leite@positivo.com.br', '(11) 98200-7780', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL LEONARDO OLIVEIRA OZORIO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74910', 
            email = 'gabriel.ozorio@positivo.com.br', 
            celular_corporativo = '(19) 99451-5435', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GABRIEL LEONARDO OLIVEIRA OZORIO', '74910', 'gabriel.ozorio@positivo.com.br', '(19) 99451-5435', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL PAGLIA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74483', 
            email = 'gabriel.paglia@positivo.com.br', 
            celular_corporativo = '(11) 96466-0726', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GABRIEL PAGLIA', '74483', 'gabriel.paglia@positivo.com.br', '(11) 96466-0726', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL RENNAN DIAS PEREIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74484', 
            email = 'grennan@positivo.com.br', 
            celular_corporativo = '(11) 96847-5220', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GABRIEL RENNAN DIAS PEREIRA', '74484', 'grennan@positivo.com.br', '(11) 96847-5220', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GABRIEL RIBEIRO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'gabrib04@gmail.com', 
            celular_corporativo = '(14) 99734-7526', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GABRIEL RIBEIRO', NULL, 'gabrib04@gmail.com', '(14) 99734-7526', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GEILTON APARECIDO CLEMENTE') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'geiltonc@positivo.com.br', 
            celular_corporativo = '(11) 99438-7078', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GEILTON APARECIDO CLEMENTE', NULL, 'geiltonc@positivo.com.br', '(11) 99438-7078', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GUILHERME AUGUSTO ALEXANDRE TORTELLI') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'guilherme_augusto_12@hotmail.com', 
            celular_corporativo = '(16) 97401-8374', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GUILHERME AUGUSTO ALEXANDRE TORTELLI', NULL, 'guilherme_augusto_12@hotmail.com', '(16) 97401-8374', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GUILHERME DE ALMEIDA NOGUEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74499', 
            email = 'guilherme.nogueira@positivo.com.br', 
            celular_corporativo = '(14) 98134-9379', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GUILHERME DE ALMEIDA NOGUEIRA', '74499', 'guilherme.nogueira@positivo.com.br', '(14) 98134-9379', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GUILHERME DE CAMARGO TONETTO DOS REIS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74772', 
            email = 'guilherme.reis@positivo.com.br', 
            celular_corporativo = '(16) 98131-8914', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GUILHERME DE CAMARGO TONETTO DOS REIS', '74772', 'guilherme.reis@positivo.com.br', '(16) 98131-8914', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GUILHERME YUZO MIYASIRO UEHARA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74104', 
            email = 'guilherme.uehara@positivo.com.br', 
            celular_corporativo = '(11) 96177-8242', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GUILHERME YUZO MIYASIRO UEHARA', '74104', 'guilherme.uehara@positivo.com.br', '(11) 96177-8242', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GUSTAVO COLETO DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'gcoleto@positivo.com.br', 
            celular_corporativo = '(11) 99742-8177', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GUSTAVO COLETO DA SILVA', NULL, 'gcoleto@positivo.com.br', '(11) 99742-8177', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GUSTAVO DE OLIVEIRA BOREL') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'gustavo.borel@positivo.com.br', 
            celular_corporativo = '(11) 98223-0473', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GUSTAVO DE OLIVEIRA BOREL', NULL, 'gustavo.borel@positivo.com.br', '(11) 98223-0473', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GUSTAVO GALDINO MOREIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74377', 
            email = 'ggaldino@positivo.com.br', 
            celular_corporativo = '11 968494222', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GUSTAVO GALDINO MOREIRA', '74377', 'ggaldino@positivo.com.br', '11 968494222', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('GUSTAVO GUIMARAES COSTA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72880', 
            email = 'gustavo.silva@positivo.com.br', 
            celular_corporativo = '(11) 95480-1217', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('GUSTAVO GUIMARAES COSTA SILVA', '72880', 'gustavo.silva@positivo.com.br', '(11) 95480-1217', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('HELENO MEIRA DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75030', 
            email = 'gaibinasantos@gmail.com', 
            celular_corporativo = '(15) 99810-7985', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('HELENO MEIRA DOS SANTOS', '75030', 'gaibinasantos@gmail.com', '(15) 99810-7985', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('HENRIQUE GALDINO DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'henriques@positivo.com.br', 
            celular_corporativo = '(41) 99216-0811', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('HENRIQUE GALDINO DA SILVA', NULL, 'henriques@positivo.com.br', '(41) 99216-0811', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('HERBERT DE ALENCAR GUAREZI') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'herbertguarezi@gmail.com', 
            celular_corporativo = '(11) 93408-1778', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('HERBERT DE ALENCAR GUAREZI', NULL, 'herbertguarezi@gmail.com', '(11) 93408-1778', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('IAN GARCIA DA COSTA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74427', 
            email = 'ian.costa@positivo.com.br', 
            celular_corporativo = '(15) 99131-6559', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('IAN GARCIA DA COSTA', '74427', 'ian.costa@positivo.com.br', '(15) 99131-6559', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('IGOR IAGO DE SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74912', 
            email = 'igori@positivo.com.br', 
            celular_corporativo = '(17) 98190-8818', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('IGOR IAGO DE SOUZA', '74912', 'igori@positivo.com.br', '(17) 98190-8818', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('IZEQUIEL ISRAELITO DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74084', 
            email = 'izequiel.silva@positivo.com.br', 
            celular_corporativo = '11 91271-6896', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('IZEQUIEL ISRAELITO DA SILVA', '74084', 'izequiel.silva@positivo.com.br', '11 91271-6896', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JACIANO SEBASTIAO DE OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '71495', 
            email = 'jaciano.oliveira@positivo.com.br', 
            celular_corporativo = '(11) 98278-2245', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JACIANO SEBASTIAO DE OLIVEIRA', '71495', 'jaciano.oliveira@positivo.com.br', '(11) 98278-2245', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JAELSON PAULO DE JESUS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72497', 
            email = 'JAELSON_PAULO@HOTMAIL.COM', 
            celular_corporativo = '-', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JAELSON PAULO DE JESUS', '72497', 'JAELSON_PAULO@HOTMAIL.COM', '-', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('Jafherson Kalliu De Matos Oliveira') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75228', 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('Jafherson Kalliu De Matos Oliveira', '75228', NULL, NULL, 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JAYME FUMAGALLI PRADO E SOUSA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'jaymefps@gmail.com', 
            celular_corporativo = '(19) 99294-0060', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JAYME FUMAGALLI PRADO E SOUSA', NULL, 'jaymefps@gmail.com', '(19) 99294-0060', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JEFERSON ARTUR VULCANIS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74277', 
            email = 'jeferson.vulcanis@positivo.com.br', 
            celular_corporativo = '(19) 99125-9668', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JEFERSON ARTUR VULCANIS', '74277', 'jeferson.vulcanis@positivo.com.br', '(19) 99125-9668', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JEFERSON RICARDO ASSUNCAO ASTOLFI') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '58546', 
            email = 'JRASSUNCAO@POSITIVO.COM.BR', 
            celular_corporativo = '-', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JEFERSON RICARDO ASSUNCAO ASTOLFI', '58546', 'JRASSUNCAO@POSITIVO.COM.BR', '-', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JEFFERSON EDUARDO MOREIRA DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74773', 
            email = 'jesilva@positivo.com.br', 
            celular_corporativo = '(11) 99578-3469', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JEFFERSON EDUARDO MOREIRA DA SILVA', '74773', 'jesilva@positivo.com.br', '(11) 99578-3469', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOABE DA SILVA VEIGA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'joabesveiga@positivo.com.br', 
            celular_corporativo = '(18) 99128-0768', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOABE DA SILVA VEIGA', NULL, 'joabesveiga@positivo.com.br', '(18) 99128-0768', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOAO CARLOS CASTRO DE LIMA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74488', 
            email = 'jlima@positivo.com.br', 
            celular_corporativo = '(19) 98169-7636', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOAO CARLOS CASTRO DE LIMA', '74488', 'jlima@positivo.com.br', '(19) 98169-7636', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOAO HENRIQUE RODRIGUES DE SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74913', 
            email = 'joaorsouza233@gmail.com', 
            celular_corporativo = '(14) 99186-7807', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOAO HENRIQUE RODRIGUES DE SOUZA', '74913', 'joaorsouza233@gmail.com', '(14) 99186-7807', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOAO HENRIQUE SOARES NETO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'joaon@positivo.com.br', 
            celular_corporativo = '(11) 97073-7301', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOAO HENRIQUE SOARES NETO', NULL, 'joaon@positivo.com.br', '(11) 97073-7301', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOAO PAULO BASTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74914', 
            email = 'jbastos@positivo.com.br', 
            celular_corporativo = '(14) 99688-2507', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOAO PAULO BASTOS', '74914', 'jbastos@positivo.com.br', '(14) 99688-2507', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOAO PAULO DA SILVA RAFAEL') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'joao.rafael@positivo.com.br', 
            celular_corporativo = '(11) 93391-5314', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOAO PAULO DA SILVA RAFAEL', NULL, 'joao.rafael@positivo.com.br', '(11) 93391-5314', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('Joao Victor Rigo') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75267', 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('Joao Victor Rigo', '75267', NULL, NULL, 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOEL CORREA JUNIOR') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74271', 
            email = 'joel.junior@positivo.com.br', 
            celular_corporativo = '(13) 99715-4891', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOEL CORREA JUNIOR', '74271', 'joel.junior@positivo.com.br', '(13) 99715-4891', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOSE HENRIQUE SEIXAS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'Jhenriqueseixas@gmail.com', 
            celular_corporativo = '(16) 97404-3137', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOSE HENRIQUE SEIXAS', NULL, 'Jhenriqueseixas@gmail.com', '(16) 97404-3137', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JOSE MARLOS LOPES DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'bauru.bauru2016@gmail.com', 
            celular_corporativo = '(14) 99124-2232', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JOSE MARLOS LOPES DA SILVA', NULL, 'bauru.bauru2016@gmail.com', '(14) 99124-2232', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('Junior Batista De Souza') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75519', 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('Junior Batista De Souza', '75519', NULL, NULL, 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JUNIOR SANTOS GIGANTE VIANA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'JUN.ARTE@HOTMAIL.COM', 
            celular_corporativo = '(19) 98822-1723', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JUNIOR SANTOS GIGANTE VIANA', NULL, 'JUN.ARTE@HOTMAIL.COM', '(19) 98822-1723', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('KESLLEY PEREIRA DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'keslleyp@positivo.com.br', 
            celular_corporativo = '(11) 97803-5324', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('KESLLEY PEREIRA DA SILVA', NULL, 'keslleyp@positivo.com.br', '(11) 97803-5324', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('KEVIN AGUIAR DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'kevin.santos@positivo.com.br', 
            celular_corporativo = '(11) 99940-1032', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('KEVIN AGUIAR DOS SANTOS', NULL, 'kevin.santos@positivo.com.br', '(11) 99940-1032', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LEANDRO DAUD COMAR') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'leandrodaud@outlook.com', 
            celular_corporativo = '(17) 99736 2607', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LEANDRO DAUD COMAR', NULL, 'leandrodaud@outlook.com', '(17) 99736 2607', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LEONARDO DEMETRIO DA FONSECA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'nexacoreautomacao@gmail.com', 
            celular_corporativo = '(13) 996589629', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LEONARDO DEMETRIO DA FONSECA', NULL, 'nexacoreautomacao@gmail.com', '(13) 996589629', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LEONARDO FRANCISCO NEVES DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '59254', 
            email = 'leonardons@positivo.com.br', 
            celular_corporativo = '5511941751822', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LEONARDO FRANCISCO NEVES DA SILVA', '59254', 'leonardons@positivo.com.br', '5511941751822', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LEONE HENRIQUE DA SILVA SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74774', 
            email = 'leone.henrik1995@gmail.com', 
            celular_corporativo = '(11) 94188-6857', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LEONE HENRIQUE DA SILVA SANTOS', '74774', 'leone.henrik1995@gmail.com', '(11) 94188-6857', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS CARVALHO PAIVA DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'lucasc@positivo.com.br', 
            celular_corporativo = '(11) 97118-0954', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUCAS CARVALHO PAIVA DA SILVA', NULL, 'lucasc@positivo.com.br', '(11) 97118-0954', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS DA SILVA FEITOSA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75150', 
            email = 'lucas.feitosa@positivo.com.br', 
            celular_corporativo = '(11) 98479-6034', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUCAS DA SILVA FEITOSA', '75150', 'lucas.feitosa@positivo.com.br', '(11) 98479-6034', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS EVANGELISTA AUGUSTO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74493', 
            email = 'lucas.augusto@positivo.com.br', 
            celular_corporativo = '(11) 97638-7973', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUCAS EVANGELISTA AUGUSTO', '74493', 'lucas.augusto@positivo.com.br', '(11) 97638-7973', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('Lucas Ferreira Tolentino') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75266', 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('Lucas Ferreira Tolentino', '75266', NULL, NULL, 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS VINICIUS ALVES GONCALVES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75163', 
            email = 'LVGONCALVES@POSITIVO.COM.BR', 
            celular_corporativo = '(47) 99157-4296', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUCAS VINICIUS ALVES GONCALVES', '75163', 'LVGONCALVES@POSITIVO.COM.BR', '(47) 99157-4296', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUCAS VINICIUS ALVES GONÇALVES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUCAS VINICIUS ALVES GONÇALVES', NULL, NULL, NULL, 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('LUIS FERNANDO GAZOLA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75265', 
            email = 'LUIS.GAZOLA@POSITIVO.COM.BR', 
            celular_corporativo = '(12) 98871-4009', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('LUIS FERNANDO GAZOLA', '75265', 'LUIS.GAZOLA@POSITIVO.COM.BR', '(12) 98871-4009', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCELO FABIANO DO NASCIMENTO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74359', 
            email = 'marcelo.nascimento@positivo.com.br', 
            celular_corporativo = '11 97129-4959', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCELO FABIANO DO NASCIMENTO', '74359', 'marcelo.nascimento@positivo.com.br', '11 97129-4959', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCIO SANTOS SANTANA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'Plugmss@yahoo.com.br', 
            celular_corporativo = '(79) 98813-8181', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCIO SANTOS SANTANA', NULL, 'Plugmss@yahoo.com.br', '(79) 98813-8181', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('Marco Antonio Fernandes') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75219', 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('Marco Antonio Fernandes', '75219', NULL, NULL, 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCO ANTÔNIO FERNANDES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = NULL, 
            celular_corporativo = NULL, 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCO ANTÔNIO FERNANDES', NULL, NULL, NULL, 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARCUS PABLO GONGORA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73109', 
            email = 'marcusg@positivo.com.br', 
            celular_corporativo = '(11) 93439-9693', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARCUS PABLO GONGORA', '73109', 'marcusg@positivo.com.br', '(11) 93439-9693', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARINA ZORZELLI') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'marina.zorzelli@gmail.com', 
            celular_corporativo = '(11) 99408-9806', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARINA ZORZELLI', NULL, 'marina.zorzelli@gmail.com', '(11) 99408-9806', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MARLON WASLLEY MENDES DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'marlonw@positivo.com.br', 
            celular_corporativo = '(19) 99219-3429', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MARLON WASLLEY MENDES DA SILVA', NULL, 'marlonw@positivo.com.br', '(19) 99219-3429', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MATEUS FORTUNATO XAVIER') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73925', 
            email = 'mateusx@positivo.com.br', 
            celular_corporativo = '(11) 97125-8459', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MATEUS FORTUNATO XAVIER', '73925', 'mateusx@positivo.com.br', '(11) 97125-8459', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MATHEUS GUSTAVO LOURENCO DE GODOY') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74916', 
            email = 'matheus.godoy@positivo.com.br', 
            celular_corporativo = '(14) 99761-3367', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MATHEUS GUSTAVO LOURENCO DE GODOY', '74916', 'matheus.godoy@positivo.com.br', '(14) 99761-3367', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MATHEUS HENRIQUE ABREU DE FREITAS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'matheus.freitas@positivo.com.br', 
            celular_corporativo = '(14) 99827-7822', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MATHEUS HENRIQUE ABREU DE FREITAS', NULL, 'matheus.freitas@positivo.com.br', '(14) 99827-7822', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MATHEUS VINICIUS SILVEIRA DE CAMPOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74418', 
            email = 'matheus.campos@positivo.com.br', 
            celular_corporativo = '(11) 97764-0584', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MATHEUS VINICIUS SILVEIRA DE CAMPOS', '74418', 'matheus.campos@positivo.com.br', '(11) 97764-0584', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MAURICIO FERREIRA NOGUEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'mauricio.nogueira@positivo.com.br', 
            celular_corporativo = '(13) 99207-0954', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MAURICIO FERREIRA NOGUEIRA', NULL, 'mauricio.nogueira@positivo.com.br', '(13) 99207-0954', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MICHEL DA SILVA GOMES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'michel.gomes@positivo.com.br', 
            celular_corporativo = '(11) 95877-5151', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MICHEL DA SILVA GOMES', NULL, 'michel.gomes@positivo.com.br', '(11) 95877-5151', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MICHEL NEVES LOBO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'michel-lobo@hotmail.com', 
            celular_corporativo = '(18) 99788-3247', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MICHEL NEVES LOBO', NULL, 'michel-lobo@hotmail.com', '(18) 99788-3247', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('MOACIR SABINO DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74103', 
            email = 'moacir.silva@positivo.com.br', 
            celular_corporativo = '(13) 98231-9425', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('MOACIR SABINO DA SILVA', '74103', 'moacir.silva@positivo.com.br', '(13) 98231-9425', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('NATANAEL CAMPOS CAMARGO JUNIOR') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'natanael.junior@outlook.com', 
            celular_corporativo = '(14) 99786-8320', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('NATANAEL CAMPOS CAMARGO JUNIOR', NULL, 'natanael.junior@outlook.com', '(14) 99786-8320', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('NILTON CESAR DA SILVA LARANJA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'lan.gamenet@hotmail.com', 
            celular_corporativo = '(18) 99730-5220', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('NILTON CESAR DA SILVA LARANJA', NULL, 'lan.gamenet@hotmail.com', '(18) 99730-5220', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('PABLO MARCELO CLEMENTE DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74101', 
            email = 'pablos@positivo.com.br', 
            celular_corporativo = '(16) 98248-5683', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('PABLO MARCELO CLEMENTE DA SILVA', '74101', 'pablos@positivo.com.br', '(16) 98248-5683', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO ANDRE SILVA DE LIMA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '58046', 
            email = 'PASILVA@POSITIVO.COM.BR', 
            celular_corporativo = '-', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('PAULO ANDRE SILVA DE LIMA', '58046', 'PASILVA@POSITIVO.COM.BR', '-', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO CESAR VITAL') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'pcesar@positivo.com.br', 
            celular_corporativo = '(16) 99720-0984', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('PAULO CESAR VITAL', NULL, 'pcesar@positivo.com.br', '(16) 99720-0984', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO HENRIQUE SANTANA DE MELO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'paulynholemon@gmail.com', 
            celular_corporativo = '(61) 98495-9636', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('PAULO HENRIQUE SANTANA DE MELO', NULL, 'paulynholemon@gmail.com', '(61) 98495-9636', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO HENRIQUE SOUZA COSTA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74775', 
            email = 'paulo.costa@positivo.com.br', 
            celular_corporativo = '(11) 95351-6764', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('PAULO HENRIQUE SOUZA COSTA', '74775', 'paulo.costa@positivo.com.br', '(11) 95351-6764', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RAFAEL ALVES GUIMARAES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74776', 
            email = 'rafael.guimaraes@positivo.com.br', 
            celular_corporativo = '(11) 94227-9217', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RAFAEL ALVES GUIMARAES', '74776', 'rafael.guimaraes@positivo.com.br', '(11) 94227-9217', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RAFAEL DE FREITAS SILVA MENEZES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'rfreitas@positivo.com.br', 
            celular_corporativo = '(15) 99683-6876', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RAFAEL DE FREITAS SILVA MENEZES', NULL, 'rfreitas@positivo.com.br', '(15) 99683-6876', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RAFAEL DE LIMA SANTANA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'dev.rafaelsantana@gmail.com', 
            celular_corporativo = '(15) 99683-6876', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RAFAEL DE LIMA SANTANA', NULL, 'dev.rafaelsantana@gmail.com', '(15) 99683-6876', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RAFAEL NUNES LAS CASAS NAVARRO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'rafael.navarro@positivo.com.br', 
            celular_corporativo = '(11) 93903-6048', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RAFAEL NUNES LAS CASAS NAVARRO', NULL, 'rafael.navarro@positivo.com.br', '(11) 93903-6048', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RAPHAEL ELIAS BARBOSA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'raphael.barbosa@positivo.com.br', 
            celular_corporativo = '(12) 98709-5571', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RAPHAEL ELIAS BARBOSA', NULL, 'raphael.barbosa@positivo.com.br', '(12) 98709-5571', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RAPHAEL LONDE SIMOES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74419', 
            email = 'raphael.simoes@positivo.com.br', 
            celular_corporativo = '(11) 91104-8237', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RAPHAEL LONDE SIMOES', '74419', 'raphael.simoes@positivo.com.br', '(11) 91104-8237', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RENATO NASCIMENTO SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'renato.pronasa@gmail.com', 
            celular_corporativo = '(15) 99608-0029', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RENATO NASCIMENTO SANTOS', NULL, 'renato.pronasa@gmail.com', '(15) 99608-0029', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RICARDO APARECIDO BARRETO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '73772', 
            email = 'ricardob@positivo.com.br', 
            celular_corporativo = '(11) 99464-2736', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RICARDO APARECIDO BARRETO', '73772', 'ricardob@positivo.com.br', '(11) 99464-2736', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RICARDO ROCHA DE SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74494', 
            email = 'rrsouza@positivo.com.br', 
            celular_corporativo = '(19) 99920-6187', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RICARDO ROCHA DE SOUZA', '74494', 'rrsouza@positivo.com.br', '(19) 99920-6187', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RICARDO VERONEZZI') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74420', 
            email = 'ricardo.veronezzi@positivo.com.br', 
            celular_corporativo = '(11) 94170-1597', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RICARDO VERONEZZI', '74420', 'ricardo.veronezzi@positivo.com.br', '(11) 94170-1597', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('Rodrigo Maraviglia Occhini') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75521', 
            email = 'rodrigo.occhini@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('Rodrigo Maraviglia Occhini', '75521', 'rodrigo.occhini@positivo.com.br', NULL, 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RODRIGO NARDI MORAIS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75225', 
            email = 'RODRIGO.MORAIS@POSITIVO.COM.BR', 
            celular_corporativo = '17 98807-9831', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RODRIGO NARDI MORAIS', '75225', 'RODRIGO.MORAIS@POSITIVO.COM.BR', '17 98807-9831', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RODRIGO PINHEIRO DE AZEVEDO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75243', 
            email = 'rpinheiro@positivo.com.br', 
            celular_corporativo = '(11) 98528-0131', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RODRIGO PINHEIRO DE AZEVEDO', '75243', 'rpinheiro@positivo.com.br', '(11) 98528-0131', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RODRIGO RODRIGUES ALVES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74777', 
            email = 'rodrigorodriguesalves@gmail.com', 
            celular_corporativo = '(11) 99019-2273', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RODRIGO RODRIGUES ALVES', '74777', 'rodrigorodriguesalves@gmail.com', '(11) 99019-2273', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RODRIGO RUAS MORENO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74894', 
            email = 'rodrigo.moreno@positivo.com.br', 
            celular_corporativo = '(13) 99191-4755', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RODRIGO RUAS MORENO', '74894', 'rodrigo.moreno@positivo.com.br', '(13) 99191-4755', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('ROGERIO ARISTIDES DOS SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'rarosinformatica@gmail.com', 
            celular_corporativo = '(11) 99329-3105', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('ROGERIO ARISTIDES DOS SANTOS', NULL, 'rarosinformatica@gmail.com', '(11) 99329-3105', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RONALDO CESPEDES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'ronaldo.cespedes@positivo.com.br', 
            celular_corporativo = '(14) 98821-1721', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RONALDO CESPEDES', NULL, 'ronaldo.cespedes@positivo.com.br', '(14) 98821-1721', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RONALDO CORREA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'ronaldo.correa@positivo.com.br', 
            celular_corporativo = '(12) 98247-2632', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RONALDO CORREA', NULL, 'ronaldo.correa@positivo.com.br', '(12) 98247-2632', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RONALDO UENO VALERIO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'rueno@positivo.com.br', 
            celular_corporativo = '(11) 93380-5724', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RONALDO UENO VALERIO', NULL, 'rueno@positivo.com.br', '(11) 93380-5724', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RUBENS JUNIO FERREIRA VITALINO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'rubensjuniorfvitalino@gmail.com', 
            celular_corporativo = '(11) 93212-7538', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RUBENS JUNIO FERREIRA VITALINO', NULL, 'rubensjuniorfvitalino@gmail.com', '(11) 93212-7538', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('SAMUEL LUCAS CARNEIRO CHAVES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'samuel.chaves@positivo.com.br', 
            celular_corporativo = '(12) 99618-0070', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('SAMUEL LUCAS CARNEIRO CHAVES', NULL, 'samuel.chaves@positivo.com.br', '(12) 99618-0070', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('SAULO EMMANUEL DOS SANTOS BRITO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'saulobrito0103@gmail.com', 
            celular_corporativo = '(11)97182-8498', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('SAULO EMMANUEL DOS SANTOS BRITO', NULL, 'saulobrito0103@gmail.com', '(11)97182-8498', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('SILAS DE ALVARENGA PRADO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'silasprado.ti@gmail.com', 
            celular_corporativo = '(12) 99182-2219', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('SILAS DE ALVARENGA PRADO', NULL, 'silasprado.ti@gmail.com', '(12) 99182-2219', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('STEFANY BALBINO DIAS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'stefanydias22@icloud.com', 
            celular_corporativo = '(11) 97419-4525', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('STEFANY BALBINO DIAS', NULL, 'stefanydias22@icloud.com', '(11) 97419-4525', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('STEFANY DIAS ROSSI') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74934', 
            email = 'stefanydiasrossi@gmail.com', 
            celular_corporativo = '(15) 99197-6744', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('STEFANY DIAS ROSSI', '74934', 'stefanydiasrossi@gmail.com', '(15) 99197-6744', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('THIAGO FERNANDO GOMES DE OLIVEIRA PINTO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74421', 
            email = 'tfernando@positivo.com.br', 
            celular_corporativo = '(19) 98361-6080', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('THIAGO FERNANDO GOMES DE OLIVEIRA PINTO', '74421', 'tfernando@positivo.com.br', '(19) 98361-6080', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('THIAGO REINALDO RODRIGUES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74124', 
            email = 'thiago.rodrigues@positivo.com.br', 
            celular_corporativo = '(11) 97659-4785', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('THIAGO REINALDO RODRIGUES', '74124', 'thiago.rodrigues@positivo.com.br', '(11) 97659-4785', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('THOMAZ EDER DE SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74891', 
            email = 'thomaz.souza@positivo.com.br', 
            celular_corporativo = '(18) 99115-3258', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('THOMAZ EDER DE SOUZA', '74891', 'thomaz.souza@positivo.com.br', '(18) 99115-3258', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VAGNER DE SOUZA BARBOSA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74778', 
            email = 'vagner.agil@gmail.com', 
            celular_corporativo = '(11) 97741-2918', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VAGNER DE SOUZA BARBOSA', '74778', 'vagner.agil@gmail.com', '(11) 97741-2918', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VAGNER VIDAL') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'vagner.vidal@heartech.com.br', 
            celular_corporativo = '(11) 94733-7939', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VAGNER VIDAL', NULL, 'vagner.vidal@heartech.com.br', '(11) 94733-7939', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VICTOR HUGO LIMA DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'Nuno.dolci@gmail.com', 
            celular_corporativo = '(11) 98029-0393', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VICTOR HUGO LIMA DA SILVA', NULL, 'Nuno.dolci@gmail.com', '(11) 98029-0393', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VICTOR RYAN ZAGO LUJAN') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'victoryan.zago@outlook.com', 
            celular_corporativo = '(18) 99610-4583', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VICTOR RYAN ZAGO LUJAN', NULL, 'victoryan.zago@outlook.com', '(18) 99610-4583', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VINICIUS DACIO DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'viniciusdacio@gmail.com', 
            celular_corporativo = '(47) 9192-4120', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VINICIUS DACIO DA SILVA', NULL, 'viniciusdacio@gmail.com', '(47) 9192-4120', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('VINICIUS MUCIO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '72881', 
            email = 'vmucio@positivo.com.br', 
            celular_corporativo = '(11) 94212-8473', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('VINICIUS MUCIO', '72881', 'vmucio@positivo.com.br', '(11) 94212-8473', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WALLACE FERREIRA SOUZA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75516', 
            email = 'wallacesouzaws865@gmail.com', 
            celular_corporativo = '-', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WALLACE FERREIRA SOUZA', '75516', 'wallacesouzaws865@gmail.com', '-', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WANDERSON CRUZ SANTOS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'wandersons@positivo.com.br', 
            celular_corporativo = '(11) 94614-2894', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WANDERSON CRUZ SANTOS', NULL, 'wandersons@positivo.com.br', '(11) 94614-2894', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WELLINGTON TRANQUITELLA DE MELO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'wellington.melo@positivo.com.br', 
            celular_corporativo = '(14) 99127-4528', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WELLINGTON TRANQUITELLA DE MELO', NULL, 'wellington.melo@positivo.com.br', '(14) 99127-4528', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WELLINGTON VICTOR TORRES') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'wellington.torres@positivo.com.br', 
            celular_corporativo = '(11) 99952-9400', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WELLINGTON VICTOR TORRES', NULL, 'wellington.torres@positivo.com.br', '(11) 99952-9400', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WESLEY MACHADO DA SILVA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75052', 
            email = 'wmachado@positivo.com.br', 
            celular_corporativo = '(19) 99242-5190', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WESLEY MACHADO DA SILVA', '75052', 'wmachado@positivo.com.br', '(19) 99242-5190', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WESLEY RODRIGUES RIBEIRO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'wesley.ribeiro@positivo.com.br', 
            celular_corporativo = '(17) 99137-1276', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WESLEY RODRIGUES RIBEIRO', NULL, 'wesley.ribeiro@positivo.com.br', '(17) 99137-1276', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WESLEY SANTOS DA CUNHA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'wesleycwnha@gmail.com', 
            celular_corporativo = '(11) 96245-8414', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WESLEY SANTOS DA CUNHA', NULL, 'wesleycwnha@gmail.com', '(11) 96245-8414', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WILLIAM CYRILO MONTEIRO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'will.monteiro@hotmail.com', 
            celular_corporativo = '(11) 95647-4052', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WILLIAM CYRILO MONTEIRO', NULL, 'will.monteiro@hotmail.com', '(11) 95647-4052', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WILLIAM MARTINS DE OLIVEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'Oliveiraw76@gmail.com', 
            celular_corporativo = '(11) 94878-6930', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WILLIAM MARTINS DE OLIVEIRA', NULL, 'Oliveiraw76@gmail.com', '(11) 94878-6930', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WILLIAM PAULO DEBIEN ARISIO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74498', 
            email = 'william.arisio@positivo.com.br', 
            celular_corporativo = '(14) 99199-4600', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WILLIAM PAULO DEBIEN ARISIO', '74498', 'william.arisio@positivo.com.br', '(14) 99199-4600', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WILLIANS SANTOS DE PANTAS') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'williansp@positivo.com.br', 
            celular_corporativo = '(11) 95150-7338', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WILLIANS SANTOS DE PANTAS', NULL, 'williansp@positivo.com.br', '(11) 95150-7338', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('WILSON JOSE DE SANTANA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '59175', 
            email = 'wsantana@positivo.com.br', 
            celular_corporativo = '(11) 98996-8040', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('WILSON JOSE DE SANTANA', '59175', 'wsantana@positivo.com.br', '(11) 98996-8040', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('YURI NOGUEIRA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75159', 
            email = 'yurinogueira194@gmail.com', 
            celular_corporativo = '(11) 95339-2363', 
            nome_coordenador = 'Gabriel Briiggemann Siqueira Sousa', 
            email_coordenador = 'bsousa@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('YURI NOGUEIRA', '75159', 'yurinogueira194@gmail.com', '(11) 95339-2363', 'Gabriel Briiggemann Siqueira Sousa', 'bsousa@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JAKELINE MEYRE DE CASTRO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74426', 
            email = 'jakelinec@positivo.com.br', 
            celular_corporativo = '5563999518524', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JAKELINE MEYRE DE CASTRO', '74426', 'jakelinec@positivo.com.br', '5563999518524', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('JEFFERSON LUIS CAMPELO DA COSTA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '75522', 
            email = 'jefferson.costa@positivo.com.br', 
            celular_corporativo = '63 981069240', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('JEFFERSON LUIS CAMPELO DA COSTA', '75522', 'jefferson.costa@positivo.com.br', '63 981069240', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('OLIABE MOURA DE CASTRO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = NULL, 
            email = 'oliabec@positivo.com.br', 
            celular_corporativo = NULL, 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('OLIABE MOURA DE CASTRO', NULL, 'oliabec@positivo.com.br', NULL, 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('PAULO VICTOR MATOS LÔLA') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74423', 
            email = 'pvictor@positivo.com.br', 
            celular_corporativo = '5563984053187', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('PAULO VICTOR MATOS LÔLA', '74423', 'pvictor@positivo.com.br', '5563984053187', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;


    SELECT id_tecnico INTO v_id_tecnico FROM tb_tecnico WHERE UPPER(TRIM(nome_completo)) = UPPER('RAFAEL DA SILVA NASCIMENTO') LIMIT 1;
    
    IF v_id_tecnico IS NOT NULL THEN
        UPDATE tb_tecnico SET 
            matricula = '74422', 
            email = 'rafaeln@positivo.com.br', 
            celular_corporativo = '5563999775027', 
            nome_coordenador = 'Everton Renato Schendroski Bulhessich', 
            email_coordenador = 'evertonb@positivo.com.br', 
            nome_gerente = 'Aquiles Nogueira', 
            email_gerente = 'anogueira@positivo.com.br'
        WHERE id_tecnico = v_id_tecnico;
    ELSE
        INSERT INTO tb_tecnico (nome_completo, matricula, email, celular_corporativo, nome_coordenador, email_coordenador, nome_gerente, email_gerente)
        VALUES ('RAFAEL DA SILVA NASCIMENTO', '74422', 'rafaeln@positivo.com.br', '5563999775027', 'Everton Renato Schendroski Bulhessich', 'evertonb@positivo.com.br', 'Aquiles Nogueira', 'anogueira@positivo.com.br');
    END IF;

END $$;
