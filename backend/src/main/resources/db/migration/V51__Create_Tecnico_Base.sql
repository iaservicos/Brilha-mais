-- V51__Create_Tecnico_Base.sql
-- Tabela associativa Muitos-Para-Muitos entre Técnico e Base ATP

CREATE TABLE tb_tecnico_base (
    id_tecnico INTEGER NOT NULL,
    ct_codigo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_tecnico, ct_codigo),
    FOREIGN KEY (id_tecnico) REFERENCES tb_tecnico (id_tecnico) ON DELETE CASCADE
);

-- Migrando as bases existentes da tb_tecnico para a nova tabela
INSERT INTO tb_tecnico_base (id_tecnico, ct_codigo)
SELECT id_tecnico, ct_base
FROM tb_tecnico
WHERE ct_base IS NOT NULL;

-- Remove a constraint da chave estrangeira anterior
-- Nota: o nome da foreign key antiga depende do flyway ou da criação manual, geralmente é "tb_tecnico_ct_base_fkey".
-- Vamos tentar dropar usando um DO block caso exista, para não quebrar a migração.
DO $$ 
DECLARE 
    fk_name TEXT;
BEGIN
    SELECT constraint_name INTO fk_name 
    FROM information_schema.table_constraints 
    WHERE table_name = 'tb_tecnico' AND constraint_type = 'FOREIGN KEY' 
    AND constraint_name ILIKE '%ct_base%';

    IF fk_name IS NOT NULL THEN
        EXECUTE 'ALTER TABLE tb_tecnico DROP CONSTRAINT ' || fk_name;
    END IF;
END $$;

-- Dropar a view que depende da coluna antiga para não falhar
DROP VIEW IF EXISTS vw_chamados_por_tecnico;

-- Dropar a coluna antiga
ALTER TABLE tb_tecnico DROP COLUMN ct_base;

-- Recriar a view com a nova estrutura N:N
CREATE OR REPLACE VIEW vw_chamados_por_tecnico AS
SELECT 
    t.nome_completo AS "Técnico",
    b.nome_atp AS "Base",
    COUNT(c.chamado) AS "Total de Chamados",
    MIN(c.ft) AS "Primeiro Chamado",
    MAX(c.ft) AS "Último Chamado"
FROM tb_tecnico t
JOIN tb_chamado c ON t.id_tecnico = c.id_tecnico
LEFT JOIN tb_tecnico_base tb ON t.id_tecnico = tb.id_tecnico
LEFT JOIN tb_base_atp b ON tb.ct_codigo = b.ct_codigo
GROUP BY t.nome_completo, b.nome_atp;
