/*
SELECT ProductID, AVG(LineTotal) AS "Media" 
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000
ORDER BY ProductID ASC

SELECT StateProvinceID, COUNT(StateProvinceID) AS "TOTAL"
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) >= 1000

SELECT ProductID, SUM(LineTotal) AS "Total"
FROM SALES.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 160000 AND 500000
ORDER BY ProductID ASC

O having faz uma filtragrem em cima de um grupo
SELECT FirstName, COUNT(FirstName) AS "Quantidade"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

SELECT ProductID, COUNT(ProductId)"ProductQty",
AVG(OrderQty) "Media"
FROM Production.WorkOrder
GROUP BY ProductID
ORDER BY ProductID ASC


SELECT TOP 10 ProductID, SUM(LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC;
*/


/*
SELECT ProductID, AVG(OrderQty) as 'QUANTIDADE'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
*/
/*
SELECT MiddleName, COUNT(MiddleName)
FROM Person.Person
GROUP BY MiddleName
*/

/*
SELECT AVG(ListPrice) AS 'MediaSilver'
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color
*/