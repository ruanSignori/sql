CREATE TABLE instrutor (
    id SERIAL PRIMARY KEY
    nome VARCHAR(255) NOT NULL,
    salario DECIMAL(10, 2)
);

INSERT INTO instrutor (
	nome, salario
) VALUES (
	'Jorge da capadocia',
	300
);

-- Quando você cria uma nova tabela, ela automaticamente possui um tipo.
-- O parâmetro é do tipo instrutor.
CREATE FUNCTION dobro_salario(instrutor) RETURNS DECIMAL AS $$
    SELECT $1.salario * 2 AS "DobroSalario";
$$ LANGUAGE SQL;

-- Chama todos os instrutores cadastrados no banco de dados
SELECT nome, dobro_salario(instrutor.*) FROM instrutor;


-- Embora ñ esteja criando um Instrutor de fato, por te o mesmo tipo e estar na mesma sequência, o PSQL permite o retorno do instrutor
CREATE FUNCTION fake_instrutor() RETURNS instrutor AS $$
	SELECT 22, 'Nome falso', 300.0
$$ LANGUAGE SQL;


SELECT fake_instrutor(); -- Vai devolver os dados inline
SELECT * FROM fake_instrutor(); -- Vai devolver os dados em uma coluna