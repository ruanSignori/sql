-- Quando precisar usar uma função de agregação (SUM, MAX, COUNT), usar o GROUP BY, se não, pode usar o DISTINCT

-- Retorna apenas os valores que são diferentes
SELECT DISTINCT
	nome,
	sobrenome
FROM funcionarios
ORDER BY nome;

SELECT DISTINCT
	nome,
	sobrenome.
    COUNT(*)
FROM funcionarios
ORDER BY nome;