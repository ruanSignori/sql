-- Retorna somente os cursos que são da Categoria FrontEnd e Programação
SELECT *
FROM curso
JOIN categoria ON categoria.id = curso.categoria_id
WHERE categoria.nome IN ('FrontEnd', 'Programação') -- o IN simplifica a query, ao invés dele, seria o código abaixo
-- WHERE categoria.nome = 'FrontEnd' OR categoria.nome = 'Programação