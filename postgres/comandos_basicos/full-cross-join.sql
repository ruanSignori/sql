SELECT aluno.nome as "Aluno", cursos.nome AS "Curso"
    FROM aluno
    FULL JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	FULL JOIN cursos ON cursos.id = aluno_curso.curso_id

-- Traz todos os dados independente se estão vazios ou não

SELECT aluno.nome as "Nome", cursos.nome as "Curso"
	FROM aluno
	CROSS JOIN cursos;
-- Para cada aluno, vai ter todos os cursos
-- Pega a 1º coluna e multiplica com a segunda, atribuindo valor