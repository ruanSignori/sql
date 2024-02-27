-- O bloco de fora sobrepõe o interno
CREATE OR REPLACE FUNCTION primeira_pl() RETURNS INTEGER AS $$
    DECLARE
        primeira_variavel INTEGER DEFAULT 2;
    BEGIN
        DECLARE
			primeira_variavel INTEGER;
		BEGIN
			primeira_variavel := 7;
		END;
		RETURN primeira_variavel;
    END
$$ LANGUAGE plpgsql;


SELECT primeira_pl(); -- Out = 2
