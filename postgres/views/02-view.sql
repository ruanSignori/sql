
SELECT 
	aluno_curso.aluno_id AS "Id Aluno", 
	aluno.primeiro_nome as "Primeiro Nome", 
	aluno.ultimo_nome as "Ultimo Nome", 
	curso.nome AS "Cursando", 
	categoria.nome AS "Categoria do curso"
FROM aluno_curso
JOIN aluno ON aluno.id = aluno_id
JOIN curso ON curso.id = curso_id
JOIN categoria ON categoria.id = curso.categoria_id