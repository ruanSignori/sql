SELECT *
FROM aluno
WHERE nome LIKE '%a%'
OR nome LIKE '%b%'
AND CPF IS NOT NULL;