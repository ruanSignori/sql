CREATE TEMPORARY TABLE cursos_programacao (
	id_curso INTEGER PRIMARY KEY,
	nome_curso VARCHAR(255) NOT NULL
)
-- Copia o resultado do select e insere em uma nova tabela
INSERT INTO cursos_programacao
SELECT academico.curso.id, academico.curso.nome
  FROM academico.curso
  JOIN academico.categoria ON academico.categoria.id = academico.curso.categoria_id
 WHERE categoria_id = 2;
