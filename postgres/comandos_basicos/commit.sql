-- Inicia o "Checkpoin"
BEGIN; -- START TRANSACTION

DELETE FROM teste.cursos_programacao;

ROLLBACK; -- Caso de merda, volte para o checkpoint
COMMIT; -- Confirma a alteração

-- Caso caia a conexão com o banco, durante o BEGIN, o PSQL vai fazer o rollback automático
-- Ou seja, após iniciar o BEGIN, precisa ou salvar ou cancelar as alterações