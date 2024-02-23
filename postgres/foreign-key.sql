CREATE TABLE aluno (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL
);

CREATE TABLE curso (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	FOREIGN KEY (aluno_id) -- Qual a coluna dessa tabela que vai ser a chave estrangeira?
	REFERENCES aluno (id), -- De qual tabela você está pegando esse dado, e de qual coluna?
	
	FOREIGN KEY (curso_id)
	REFERENCES cursos (id)
);

INSERT INTO aluno_curso (
	aluno_id,
	curso_id
) VALUES (
	1,
	5 -- Se não existir o valor 5 dentro da coluna id na tabela cursos, vai dar erro
);
