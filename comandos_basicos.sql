/*
 Junta o resultado do 1º SELECT com o 2º SELECT
 SELECT FirstName, Title, MiddleName
 FROM AdventureWorks2017.Person.Person
 WHERE Title = 'Mr.'
 UNION
 SELECT FirstName, MiddleName, Title
 FROM AdventureWorks2017.Person.Person
 Where MiddleName = 'a'

SELECT *
FROM AdventureWorks2017.Person.Person AS PP
LEFT JOIN AdventureWorks2017.Sales.PersonCreditCard AS SP
ON SP.BusinessEntityID = PP.BusinessEntityID
WHERE SP.BusinessEntityID IS NULL;
-- 19.118 INNER JOIN
-- 19.972 LEFT JOIN

SELECT TOP 10 PA.AddressID, PA.City, PA.StateProvinceID, PS.Name
FROM AdventureWorks2017.Person.Address as PA
INNER JOIN AdventureWorks2017.Person.StateProvince AS PS
ON PS.StateProvinceID = PA.StateProvinceID;

SELECT TOP 10 PN.BusinessEntityID, PT.Name, PN.PhoneNumberTypeID, PN.PhoneNumber
FROM AdventureWorks2017.Person.PhoneNumberType AS PT
INNER JOIN AdventureWorks2017.Person.PersonPhone AS PN 
ON PT.PhoneNumberTypeID = PN.PhoneNumberTypeID;

SELECT TOP 10 *
FROM AdventureWorks2017.Person.BusinessEntityAddress AS BA
INNER JOIN AdventureWorks2017.Person.Address AS PA ON PA.AddressID = BA.AddressID

SELECT TOP 10 P.Name, P.ListPrice, PS.Name AS NameProduct
FROM AdventureWorks2017.Production.Product AS P
INNER JOIN AdventureWorks2017.Production.ProductSubcategory AS PS 
ON P.ProductSubcategoryID = PS.ProductSubcategoryID
ORDER BY P.Name ASC


INNER JOIN 

A TABELA Person.Person, não contém o E-MAIL da PESSOA.
Através do campo BusinessEntityID, a gente pega o e-mail em uma outra tabela, a Person.EmailAddress

SELECT TOP 10 P.BusinessEntityID, P.FirstName, P.LastName, PE.EmailAddress
FROM Person.Person AS P
INNER JOIN Person.EmailAddress AS PE ON P.BusinessEntityID = PE.BusinessEntityID;
*/