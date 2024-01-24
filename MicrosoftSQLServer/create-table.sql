-- Principais tipos de de restrições

-- NOT NULL - Não permite Null
-- UNIQUE - Força que todos os valores em uma coluna sejam diferentes
-- PRIMARY KEY - Uma junção de NOT NULL e UNIQUE
-- FOREIGN KEY - Identifica unicamente uma linha em uma outra tabela
-- CHECK - Força uma condição específica em uma coluna
-- DEFAULT - Força um valor padrão quando nenhum valor é atribuído

CREATE TABLE Video (
	VideoId INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	Visualizacoes INT DEFAULT 0,
	Likes INT DEFAULT 0,
	Dislikes INT DEFAULT 0,
	Duracao INT NOT NULL,
	CanalId INT FOREIGN KEY REFERENCES Canal(CanalId)
);