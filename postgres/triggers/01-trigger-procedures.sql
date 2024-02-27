CREATE TABLE IF NOT EXISTS instrutor (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    salario NUMERIC NOT NULL
)

CREATE TABLE IF NOT EXISTS teste.log (
	id SERIAL PRIMARY KEY,
	acao VARCHAR(255)
);

-- Loga toda alteração cada vez que alterado a tabela instrutor
CREATE OR REPLACE FUNCTION teste.save_log () RETURNS TRIGGER AS $$
	BEGIN
		CASE TG_OP -- Retorna o tipo de operação
			WHEN 'INSERT' THEN
      			INSERT INTO teste.log (acao)
				VALUES (
					'Novo usuário inserido: ' || NEW.nome
				);
				RETURN NEW;
    		WHEN 'UPDATE' THEN
       			INSERT INTO teste.log (acao)
				VALUES (
					'Instrutor atualizado de: ' || OLD.nome || ' para ' || NEW.nome
				);
				RETURN NEW;
    		WHEN 'DELETE' THEN
				INSERT INTO teste.log (acao)
				VALUES (
					'Instrutor deletado: ' || OLD.nome
				);
       			RETURN NULL;
    	ELSE
      		RETURN NULL;
  		END CASE;
	END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER save_log_tg 
AFTER INSERT OR UPDATE OR DELETE ON instrutor
FOR EACH ROW EXECUTE FUNCTION teste.save_log();

-- Insert
INSERT INTO instrutor (nome, salario)
VALUES (
	'Opa',
	300
);

-- Update
UPDATE instrutor
	SET nome = 'Novo instrutor',
		salario = 350
	WHERE id = 1;

-- Delete
DELETE from instrutor
	WHERE id = 2;

SELECT *
FROM instrutor;

SELECT * 
FROM teste.log;