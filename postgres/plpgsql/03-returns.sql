-- SETOF - Conjunto de instrutores, ou seja, vai retornar mais de um valor
CREATE FUNCTION instrutores_salario_alto(valor_salario DECIMAL) RETURNS SETOF instrutor AS $$ 
	SELECT * FROM instrutor WHERE salario > valor_salario;
$$ LANGUAGE SQL;

Select * from instrutores_salario_alto(200);

-- Retorno de mais de um valor
CREATE FUNCTION sumProd(
	n1 INTEGER, n2 INTEGER, out Soma INTEGER, out Produto INTEGER
) as $$
	SELECT n1 + n2 as Soma, n1 * n2 as Produto
$$ LANGUAGE SQL;