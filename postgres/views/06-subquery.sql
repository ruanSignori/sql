
-- Seleciona os cursos que estão em uma categoria que não contém espaçoes em branco
SELECT * FROM curso WHERE categoria_id IN (
	SELECT id
	FROM categoria
	WHERE nome NOT LIKE  '% %'
)