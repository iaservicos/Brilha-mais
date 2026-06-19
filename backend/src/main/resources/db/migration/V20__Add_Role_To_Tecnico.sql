-- =================================================================================
-- V20: ADIÇÃO DE ROLE PARA RBAC (MODERADOR, ADMINISTRADOR, PADRAO)
-- =================================================================================

ALTER TABLE tb_tecnico
ADD COLUMN role VARCHAR(20) DEFAULT 'PADRAO';

-- Apenas para garantir que os registros existentes tenham o padrão (caso o BD reclame do default retrospectivo)
UPDATE tb_tecnico SET role = 'PADRAO' WHERE role IS NULL;

-- Garante que o Marcio já receba o acesso de MODERADOR na subida da aplicação
UPDATE tb_tecnico SET role = 'MODERADOR' WHERE nome_completo ILIKE '%Marcio da Silva Eduardo%';
