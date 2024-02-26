SELECT curso.id, curso.nome, COUNT(aluno_curso.curso_id) "QTD Aluno"
FROM aluno_curso
JOIN curso ON curso.id = aluno_curso.curso_id
GROUP BY curso.id, curso.nome
ORDER BY "QTD Aluno" DESC
LIMIT 1;