`SERIAL` = Auto incremento automático <br>
`VARCHAR` = Permite inserir até um quantidade que for definida, porém só usa o espaço que for preenchido. Por exemplo se definiu que o tamanho de caractere seria de **50** e só usou **10**, ele irá ocupar espaço na memória só de **10 caracteres**. <br>
`CHAR` = Permite inserir até um quantidade fixa de caracteres e sempre ocupa todo o espaço reservado. Exemplo se definiu que o tamanho de caractere seria de **50** e usou apenas **20**, ele vai ocupar **50 caracteres** na memória mesmo assim. <br>
`TEXT` = Quantidade de texto maior, que você não sabe o tamanho <br>
`INTEGER` = Tipo númerico inteiro
`NUMERIC` = Tipo númerico com até 6 casas decimais, você pode executar `NUMERIC(10, 2)` <br>
`BOOLEAN`
`DATE` = Formato `YYYY-MM-DD` <br>
`TIME` = Formato `HH:MM:SS` <br>
`TIMESTAMP` = Formato `YYYY-MM-DD HH:MM:SS` <br>