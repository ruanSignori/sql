-- DatePart

-- Selecionar o Mês que mais foi gasto com o pagamento de funcionários.
SELECT TOP 1 SUM(Rate) AS PaymentTotal, DATEPART(MONTH, RateChangeDate) AS MonthPayment
FROM HumanResources.EmployeePayHistory
GROUP BY DATEPART(MONTH, RateChangeDate)
ORDER BY PaymentTotal DESC

/*
	SELECT AVG(TotalDue) AS Media, DATEPART(year, OrderDate) AS MES
	FROM Sales.SalesOrderHeader
	GROUP BY DATEPART(year, OrderDate)

	SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS Mês
	FROM Sales.SalesOrderHeader
*/

