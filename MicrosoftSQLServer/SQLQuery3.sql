
/*
SELECT TOP 10 P.Name, P.ListPrice, PS.Name AS NameProduct
FROM Production.Product AS P
INNER JOIN Production.ProductSubcategory AS PS 
ON P.ProductSubcategoryID = PS.ProductSubcategoryID
ORDER BY P.Name ASC

INNER JOIN 

A TABELA Person.Person, n�o cont�m o E-MAIL da PESSOA.
Atrav�s do campo BusinessEntityID, a gente pega o e-mail em uma outra tabela, a Person.EmailAddress

SELECT TOP 10 P.BusinessEntityID, P.FirstName, P.LastName, PE.EmailAddress
FROM Person.Person AS P
INNER JOIN Person.EmailAddress AS PE ON P.BusinessEntityID = PE.BusinessEntityID;
*/