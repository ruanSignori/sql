-- COUNT - Retorna a quantidade de registros
-- SUM -   Retorna a soma dos registros
-- MAX -   Retorna o maior valor dos registros
-- MIN -   Retorna o menor valor dos registros
-- AVG -   Retorna a média dos registros

SELECT ROUND(avg(id), 2) -- Arredonda para 2 casas decimais a média dos id, 
FROM funcionarios -- Se não quiser nenhuma casa decimal, usar 0 como 2º parâmetro