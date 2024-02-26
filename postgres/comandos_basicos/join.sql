SELECT aluno.nome as "Aluno", cursos.nome AS "Curso"
    FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN cursos ON cursos.id = aluno_curso.curso_id
-- Seleciona tudo, da tabela aluno, e na tabela aluno_curso, aonde a coluna aluno_id seja igual a coluna id da tabela aluno
-- E também na tabela cursos, pega a coluna id da tabela curso e compara ela com a coluna curso_id da tabela aluno_curso