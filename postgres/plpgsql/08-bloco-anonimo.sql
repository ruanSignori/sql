DO $$
	DECLARE
		multiplicador INTEGER DEFAULT 1;
	BEGIN
		FOR multiplicador IN 1..500000 LOOP
			
			INSERT INTO instrutor (nome, salario)
			VALUES (
				'Teste' || multiplicador::VARCHAR, multiplicador + 1
			);
			
			multiplicador := multiplicador + 1;
		END LOOP;
	END;
$$;