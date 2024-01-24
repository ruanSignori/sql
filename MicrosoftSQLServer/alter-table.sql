
-- Inserir uma nova Coluna
ALTER TABLE Video
ADD Categoria VARCHAR(100)

-- Alterar um limite ou tipo de uma Coluna
ALTER TABLE Video
ALTER COLUMN Nome VARCHAR(200) NOT NULL

-- Renomear uma tabela no SQL Server 
EXEC sp_rename 'Video.VideoId', 'Id', 'COLUMN'

-- Renomear uma tabela
EXEC sp_rename 'NewTableCopyVideo', 'CopyYoutube'