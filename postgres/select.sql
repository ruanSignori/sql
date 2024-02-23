-- Seleciona todos os alunos que o nome é diferente de Ruan, os tipos nulos não entram nesse filtro
SELECT *
FROM aluno
WHERE nome <> 'Ruan'; -- ou !=

-- Aplica um pattern, aonde na coluna nome, o 1º caractere pode ser qualquer um, mas o restante tem que ser igual
SELECT *
FROM aluno
WHERE nome LIKE '_uan';

-- Seleciona o oposto
SELECT *
FROM aluno
WHERE nome NOT LIKE '_uan';

-- Seleciona basicamente qualquer nome que tenha a letra A
SELECT *
FROM aluno
WHERE nome LIKE '%a%';

-- A atribuição de = não funciona para comparar se o tipo é NULL, necessário usar o IS
SELECT *
FROM aluno
WHERE cpf IS NULL

-- Seleciona todos que não são nulos
SELECT *
FROM aluno
WHERE cpf IS NOT NULL

-- Seleciona todos que a idade é maior ou igual a 19
SELECT *
FROM aluno
WHERE idade >= 19

-- Seleciona todos entre 10 e 19
SELECT *
FROM aluno
WHERE idade BETWEEN 10 AND 19;