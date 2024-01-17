-- String Methods
SELECT REPLACE(ProductNumber, '-', '#')
FROM Production.Product


/*

SELECT FirstName, SUBSTRING(FirstName, 1,3)
FROM Person.Person

SELECT CONCAT(FirstName, ' ', LastName) AS FullName
FROM Person.Person

*/