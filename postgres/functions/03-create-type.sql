-- Cria um tipo
CREATE TYPE classificacao AS ENUM('Livre', '12 Anos', '14 Anos', '16 Anos', '18 Anos');

CREATE TEMPORARY TABLE filme (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	classificacao classificacao
);