CREATE FUNCTION salario_ok(instrutor instrutor) RETURNS VARCHAR AS $$
	BEGIN
		-- Se o salário do instrutor for maior que 200, ok, Se não, aumente
		IF instrutor.salario > 200 THEN
			RETURN 'Salário está OK';
		ELSE 
			RETURN 'Salário pode aumentar';
		END IF;
	END;
$$ LANGUAGE plpgsql;


SELECT nome, salario, salario_ok(instrutor.*) from instrutor;


-- ELSEIF
CREATE OR REPLACE FUNCTION salario_ok(instrutor instrutor) RETURNS VARCHAR AS $$
	BEGIN
		-- Se o salário do instrutor for maior que 200, ok, Se não, aumente
		IF instrutor.salario < 800 THEN
			RETURN 'Salário está OK';
		ELSEIF  instrutor.salario < 400 THEN
			RETURN 'Salário pode aumentar';
		ELSE
			RETURN 'Está ganhando mais do que o permitido...';
		END IF;
	END;
$$ LANGUAGE plpgsql;

SELECT nome, salario, salario_ok(instrutor.*) from instrutor;


create or replace function instrutor_salario(out nome varchar, out salario_ok varchar) returns setof record as $$
	declare
		instrutor instrutor;
	begin
		for instrutor in select * from instrutor loop
			nome := instrutor.nome;
			salario_ok = salario_ok(instrutor);
		end loop;
	end;
$$ language plpgsql;

select instrutor_salario();