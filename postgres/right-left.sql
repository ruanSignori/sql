SELECT aluno.nome as "Aluno", cursos.nome AS "Curso"
    FROM aluno
    RIGHT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	RIGHT JOIN cursos ON cursos.id = aluno_curso.curso_id

-- Mostra todos os dados da tabela da direita (""), independente se estão vazio, com Left também