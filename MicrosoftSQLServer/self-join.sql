

-- SUBQUERY	
/*

SELECT *
FROM Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Products)



SELF JOIN

SELECT OD.ProductID, OD.Discount, OD2.ProductID, OD2.Discount
FROM [Order Details] OD, [Order Details] OD2
WHERE OD.Discount = OD2.Discount


SELECT A.FirstName, A.HireDate, B.FirstName, B.HireDate
FROM Employees A, Employees B
WHERE DATEPART(YEAR, a.HireDate) = DATEPART(year, b.HireDate)
-- Datepart faz a conversão para data 

SELECT A.ContactName, A.Region, B.ContactName, B.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region
*/