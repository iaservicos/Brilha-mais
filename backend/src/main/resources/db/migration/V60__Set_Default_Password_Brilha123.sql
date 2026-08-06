-- Migration V60: Atribuir senha padrao 'brilha123' (BCrypt) e primeiro acesso para tecnicos e supervisores com matricula sem senha
UPDATE tb_tecnico 
SET senha = '$2b$10$Jm6McUR9E9LmFtXoG74yVeHqtGCWMaePEnGxt7tmcJwPmOLUuVOP2',
    is_primeiro_acesso = true 
WHERE matricula IS NOT NULL 
  AND TRIM(matricula) != '' 
  AND (senha IS NULL OR TRIM(senha) = '');

UPDATE tb_supervisor 
SET senha = '$2b$10$Jm6McUR9E9LmFtXoG74yVeHqtGCWMaePEnGxt7tmcJwPmOLUuVOP2',
    is_primeiro_acesso = true 
WHERE matricula IS NOT NULL 
  AND TRIM(matricula) != '' 
  AND (senha IS NULL OR TRIM(senha) = '');
