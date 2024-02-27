CREATE OR REPLACE FUNCTION tabuada(num INTEGER) RETURNS SETOF VARCHAR AS $$
	DECLARE
		multiplicador INTEGER DEFAULT 1;
	BEGIN 
		LOOP
        -- Return NEXT retorna mais de um valor, o SET OF na declaração da função, armazena esses valores
			RETURN NEXT num || ' x ' || multiplicador || ' = ' || num * multiplicador;
			
			multiplicador := multiplicador + 1;
			
			EXIT WHEN multiplicador = 10;
		END LOOP;
	END;
$$ LANGUAGE plpgsql;

SELECT tabuada(5);

-- WHILE
CREATE OR REPLACE FUNCTION tabuada(num INTEGER) RETURNS SETOF VARCHAR AS $$
	DECLARE
		multiplicador INTEGER DEFAULT 1;
	BEGIN 
		WHILE multiplicador < 10 LOOP
			RETURN NEXT num || ' x ' || multiplicador || ' = ' || num * multiplicador;
			
			multiplicador := multiplicador + 1;
		END LOOP;
	END;
$$ LANGUAGE plpgsql;

SELECT tabuada(5);

-- FOR
CREATE OR REPLACE FUNCTION tabuada(num INTEGER) RETURNS SETOF VARCHAR AS $$
	DECLARE
		multiplicador INTEGER DEFAULT 1;
	BEGIN 
		FOR multiplicador IN 1..9 LOOP
			RETURN NEXT num || ' x ' || multiplicador || ' = ' || num * multiplicador;
			
			multiplicador := multiplicador + 1;
		END LOOP;
	END;
$$ LANGUAGE plpgsql;

SELECT tabuada(5);