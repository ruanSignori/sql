CREATE FUNCTION instrutores_internos(id_instrutor INTEGER) RETURNS refcursor AS $$
	DECLARE
		cursor_salarios refcursor;
	BEGIN
		OPEN cursor_salarios FOR 
			SELECT instrutor.salario 
			FROM instrutor
			WHERE id <> id_instrutor AND salario > 0;
		-- Pegar os valores
		-- FETCH LAST FROM cursor_salarios INTO SALARIO;
		-- FETCH NEXT FROM cursor_salarios INTO SALARIO;
		-- FETCH PRIOR FROM cursor_salarios INTO SALARIO;
		-- FETCH FIRST FROM cursor_salarios INTO SALARIO;
		-- MOVE FIRST FROM cursor_salarios;
	END;
$$ LANGUAGE plpgsql;

/**
	FETCH além de mover o “ponteiro” do cursor, 
	devolve o valor após mover. 
	O MOVE apenas move o “ponteiro” sem devolver nenhum valor
*/