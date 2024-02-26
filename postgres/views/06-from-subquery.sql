
SELECT *
FROM (
	-- Retorna a quantidade de cursos que existe em uma categoria
	SELECT categoria.nome, COUNT(curso.categoria_id) AS numero_cursos
	FROM curso
	JOIN categoria ON categoria.id = curso.categoria_id
	GROUP BY categoria.nome

) AS categoria_cursos
WHERE numero_cursos > 3;