-- DatePart

-- Selecionar o Mês que mais foi gasto com o pagamento de funcionários.
SELECT MAX(Rate) AS PaymentTotal, DATEPART(MONTH, RateChangeDate) AS MonthPayment
FROM HumanResources.EmployeePayHistory
GROUP BY DATEPART(MONTH, RateChangeDate)

/*
	SELECT AVG(TotalDue) AS Media, DATEPART(year, OrderDate) AS MES
	FROM Sales.SalesOrderHeader
	GROUP BY DATEPART(year, OrderDate)

	SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS Mês
	FROM Sales.SalesOrderHeader
*/

