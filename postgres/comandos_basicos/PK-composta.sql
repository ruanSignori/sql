CREATE TABLE aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	PRIMARY KEY (aluno_id, curso_id)
)
-- Chamado de chave primaria composta, não permite que a coluna aluno_id tenha o mesmo valor que curso_id


-- No caso o comando abaixo vai dar erro, pois as colunas alunos_id e curso_id estão recebendo valores iguais
INSERT INTO aluno_curso(
	aluno_id,
	curso_id
)
VALUES (
	1,
	1
)
