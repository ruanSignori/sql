-- O Having é utilizado quando queremos filtrar um resultado de uma função de agrupamento (COUNT, SUM, MAX, AVG).
-- O Where não funciona com funções de agrupamento pois ele serve para verificar somente campos.

-- Mostra quantos alunos estão fazendo determinado curso
SELECT cursos.nome, COUNT(aluno.id)
FROM cursos
LEFT JOIN aluno_curso ON aluno_curso.curso_id = cursos.id -- Compara qual aluno realiza determinado curso
LEFT JOIN aluno on aluno.id = aluno_curso.aluno_id -- Traz o aluno que faz o curso
GROUP BY cursos.nome
HAVING COUNT(aluno.id) = 0