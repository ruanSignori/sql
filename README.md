# Tipos de Dados MySQL

1. **Boolean**
    
    > Por padrão, é inicializado como Nulo
    > 
    
    é representado em `BIT`
    
2. **Caracteres**
    1. Tamanho Fixo = `CHAR` 
        
        > Permite inserir até um quantidade fixa de caracteres e sempre ocupa todo o espaço reservado. Exemplo se definiu que o tamanho de caractere seria de **50** e usou apenas **20**, ele vai ocupar **50 caracteres** na memória mesmo assim.
        > 
    2. Tamanho variáveis = `VARCHAR` || `NVARCHAR`
        
        > Permite inserir até um quantidade que for definida, porém só usa o espaço que for preenchido. Por exemplo se definiu que o tamanho de caractere seria de **50** e só usou **10**, ele irá ocupar espaço na memória só de **10 caracteres**
        > 
        
3. Números
    1. Valores inteiros = `TINYINT` 
    2. Valores inteiros menores = `SMALLINT`
    3. Valores inteiros com limite maior = `INT`
    4. Valores inteiros com um limite maior ainda = `BIGINT`
    5. Valores exatos, que podem ser fracionados, que é definido o seu tamanho = `NUMERIC` || `DECIMAL`
        
        > Exemplo: NUMERIC(5, 2) = 113,22 (Um total de 5 dígitos e a precisão de escala é dois, ou seja, 2 dígitos permitidos na parte fracional)
        > 
    6. Precisão aproximada de até 15 dígitos, após a virgula = `REAL` || `FLOAT`
4. **Temporais**
    1. Armazena data formato aaaa/mm/dd = `DATE`
    2. Armazena data e hora formato aaaa/mm/dd:hh:mm:ss = `DATETIME`
    3. Armazena data e hora e milissegundos formato aaaa/mm/dd:hh:mm:sssssss = `DATETIME2`
    4. Data e hora respeitando o limite entre `‘1900-01-01:00:00:00’` até `‘2070-06-06:23:59:59’` = `SMALLDATETIME`
    5. Horas, minutos, segundos e milissegundos = `TIME`
    6. Data e hora, incluindo o fuso horário = `DATETIMEOFFSET`
