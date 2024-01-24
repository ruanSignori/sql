-- Se não colocar WHERE, irá alterar os dados de todas as tabelas

UPDATE NewTableCopyVideo
SET Nome = 'Fiquei pobre'
WHERE VideoId = 1

-- Atualizar duas colunas da mesma linha
UPDATE NewTableCopyVideo
SET Nome = 'Fiquei Pobre Também',
Duração = 15
WHERE VideoId = 2


DELETE FROM NewTableCopyVideo
WHERE VideoId = 15


