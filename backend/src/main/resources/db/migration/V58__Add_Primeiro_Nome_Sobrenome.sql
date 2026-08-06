-- Migration V58: Add primeiro_nome and sobrenome to tb_tecnico and tb_supervisor
ALTER TABLE tb_tecnico ADD COLUMN IF NOT EXISTS primeiro_nome VARCHAR(100);
ALTER TABLE tb_tecnico ADD COLUMN IF NOT EXISTS sobrenome VARCHAR(150);

ALTER TABLE tb_supervisor ADD COLUMN IF NOT EXISTS primeiro_nome VARCHAR(100);
ALTER TABLE tb_supervisor ADD COLUMN IF NOT EXISTS sobrenome VARCHAR(150);

UPDATE tb_tecnico 
SET primeiro_nome = CASE 
        WHEN STRPOS(TRIM(nome_completo), ' ') > 0 THEN SUBSTRING(TRIM(nome_completo) FROM 1 FOR STRPOS(TRIM(nome_completo), ' ') - 1)
        ELSE TRIM(nome_completo)
    END,
    sobrenome = CASE 
        WHEN STRPOS(TRIM(nome_completo), ' ') > 0 THEN SUBSTRING(TRIM(nome_completo) FROM STRPOS(TRIM(nome_completo), ' ') + 1)
        ELSE ''
    END
WHERE primeiro_nome IS NULL OR primeiro_nome = '';

UPDATE tb_supervisor 
SET primeiro_nome = CASE 
        WHEN STRPOS(TRIM(nome_completo), ' ') > 0 THEN SUBSTRING(TRIM(nome_completo) FROM 1 FOR STRPOS(TRIM(nome_completo), ' ') - 1)
        ELSE TRIM(nome_completo)
    END,
    sobrenome = CASE 
        WHEN STRPOS(TRIM(nome_completo), ' ') > 0 THEN SUBSTRING(TRIM(nome_completo) FROM STRPOS(TRIM(nome_completo), ' ') + 1)
        ELSE ''
    END
WHERE primeiro_nome IS NULL OR primeiro_nome = '';
