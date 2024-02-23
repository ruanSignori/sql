CREATE Table aluno (
    id SERIAL, -- Auto incremento automático
    nome VARCHAR(255),
    cpf CHAR(11),
    obersavacao TEXT,
    idade INTEGER,
    saldo NUMERIC(10,2),
    altura REAL,
    ativo BOOLEAN,
    data_nascimento DATE,
    horario_de_aula TIME,
    matriculado_em TIMESTAMP
)