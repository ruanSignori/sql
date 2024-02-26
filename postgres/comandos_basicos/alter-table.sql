-- Renomear tabela
ALTER TABLE a RENAME TO teste

-- Mudar o tipo de uma coluna
ALTER TABLE teste
ALTER COLUMN primeira_coluna TYPE char(1)