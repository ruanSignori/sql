/**
*	Inserir instrutores (com salários).
*	Se o salário for maior do que a média, salvar um log.
*	Salvar outro log dizendo que fulano recebe mais do que x% da grade de instrutores.
*/

CREATE TABLE log_instrutores (
	id SERIAL PRIMARY KEY,
	informacao VARCHAR(255),
	momento_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE OR REPLACE FUNCTION cria_instrutor (nome_instrutor VARCHAR, salario_instrutor DECIMAL) RETURNS VOID AS $$
	DECLARE
		id_instrutor_inserido INTEGER;
		media_salarial DECIMAL(10, 2);
		qtd_instrutores_recebem_menos INTEGER;
		total_instrutores INTEGER;
		salario DECIMAL;
		percentual DECIMAL;
	BEGIN
		-- Pegar a media salarial antes do insert
		SELECT AVG(instrutor.salario) INTO media_salarial FROM instrutor;
	
		-- Cria um novo instrutor, com os parâmetros informados, e retorna o ID desse novo INSERT
		INSERT INTO instrutor (nome, salario)
		
		VALUES (
			nome_instrutor,
			salario_instrutor
		) RETURNING id INTO id_instrutor_inserido;

		IF salario_instrutor > media_salarial THEN
			INSERT INTO log_instrutores (informacao)
			VALUES (
				nome_instrutor || ' recebe acima da média'
			);
		END IF;
		
		FOR salario IN SELECT instrutor.salario FROM instrutor WHERE id <> id_instrutor_inserido LOOP
			total_instrutores := total_instrutores + 1;
			
			IF salario_instrutor > salario THEN
				qtd_instrutores_recebem_menos := qtd_instrutores_recebem_menos + 1;
			END IF;
		END LOOP;


		-- Calcula a porcentagem
		percentual := (qtd_instrutores_recebem_menos::DECIMAL / total_instrutores::DECIMAL) * 100;
		
        -- Cria um log
		INSERT INTO log_instrutores (informacao)
		VALUES (
			nome_instrutor || ' recebe mais do que ' || percentual || '% da grade de instrutores'
		);
	END;
$$ LANGUAGE plpgsql;

SELECT * FROM instrutor;

SELECT cria_instrutor('Luiz Miranda', 1500);
select * from log_instrutores;