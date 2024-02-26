DROP TABLE IF EXISTS aluno_curso;

CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id),
	FOREIGN KEY (aluno_id) 
	REFERENCES aluno (id)
	ON DELETE CASCADE -- Quando o aluno fosse excluido, vai excluir também na tabela que ele é relacionado
	ON UPDATE CASCADE, -- O mesmo para quando o dado for atualizado
	-- Por padrão, os dados FOREIGN são RESTRICT ('Não permite exclusão')
	FOREIGN KEY (curso_id)
	REFERENCES cursos (id)
);