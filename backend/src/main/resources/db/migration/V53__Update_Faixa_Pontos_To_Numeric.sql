ALTER TABLE tb_faixa_pontuacao ALTER COLUMN pontos_obtidos TYPE numeric(5,2) USING pontos_obtidos::numeric;
