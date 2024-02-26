-- Retorna quantos cursos cada aluno está fazendo

SELECT 
	aluno.primeiro_nome as "Primeiro Nome", 
	aluno.ultimo_nome as "Ultimo Nome", 
	COUNT(aluno_curso.curso_id) as "Cursos em andamento"
FROM aluno_curso
JOIN aluno ON aluno.id = aluno_id
GROUP BY aluno.primeiro_nome, aluno.ultimo_nome
ORDER BY "Cursos em andamento" ASC