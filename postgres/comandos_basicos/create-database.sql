CREATE DATABASE alura_db
	WITH
	OWNER = postgres -- O nome do usuário "dono" da database
	ENCONDING = "UTF8" -- Define o Charset
	CONNECTION LIMIT = -1; -- Ao definir -1, informa que não tem limite de conexão

DROP DATABASE alura_db; -- Apaga o banco de dados por completo
