-- Inserir dados
INSERT INTO Video(CanalID, Nome, DataCriacao)
VALUES (2, 'RuanGamer', GETDATE());

-- Copiar uma tabela por  completo
SELECT * INTO NewTableCopyVideo FROM Video

-- Copiar colunas específicas de uma tabela 
INSERT INTO NewTableCopyVideo (VideoId, Nome, Duração)
SELECT VideoId, Nome, Duração
FROM Video