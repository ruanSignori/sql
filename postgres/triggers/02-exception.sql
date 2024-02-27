/**
    * Dentro de uma função pl, você não consegue lidar com TRANSACTIONS
    * Pois a função PL quando esta em um trigger ela faz parte do PL

    * Tipos de Exception
    * https://www.postgresql.org/docs/current/errcodes-appendix.html
*/

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
/**
	Pega toda as outras exeções
	EXCEPTION
		WHEN OTHERS THEN
		RAISE NOTICE 'Ocorreu um erro'
*/
	EXCEPTION
		WHEN undefined_column THEN
		RAISE NOTICE 'Coluna informada não existe';
	END;
$$ LANGUAGE plpgsql;