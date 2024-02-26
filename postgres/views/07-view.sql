-- Views basicamente é um relatório, você pode distribuir esses relatórios para terceiros (somente leitura)

CREATE VIEW vw_cursos_categoria AS
	SELECT categoria.nome, COUNT(curso.categoria_id) AS numero_cursos
	FROM curso
	JOIN categoria ON categoria.id = curso.categoria_id
	GROUP BY categoria.nome

SELECT * from vw_cursos_categoria;