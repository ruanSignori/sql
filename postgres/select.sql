-- Seleciona todos os alunos que o nome é diferente de Ruan
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
