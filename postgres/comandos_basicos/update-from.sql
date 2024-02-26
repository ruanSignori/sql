-- Copia os dados de uma tabela em uma outra

UPDATE teste.cursos_programacao
SET nome_curso = nome
FROM academico.curso WHERE teste.cursos_programacao.id_curso = academico.curso.id