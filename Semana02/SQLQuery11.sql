
WITH
T1 AS (
	SELECT C.NomCurso, COUNT(1) "Aulas Programadas",
	SUM(cp.Vacantes+cp.Matriculados) "vacantes programadas",
	sum(cp.matriculados) "matriculados" 
	FROM CursoProgramado CP
	JOIN Curso c ON CP.IdCurso=C.IdCurso
	WHERE cp.IdCiclo = '2021-01'
	GROUP BY C.NomCurso
)
SELECT T1.*, T1.matriculados*100.0/T1.[vacantes programadas] "Porcentaje"
FROM T1
GO


select * from Northwind..[Order Details];
go

WITH
T1 AS (
	SELECT p.ProductName,
	SUM(od.Quantity) "Cantidad de productos",
	SUM(od.Quantity*od.UnitPrice) "Importe de ventas"
	FROM Northwind..[Order Details] od
	JOIN Northwind..Products P ON od.ProductID=p.ProductID
	GROUP BY p.ProductName
),
T2 AS (SELECT SUM(T1.[Importe de ventas]) "Total" FROM T1)
SELECT 
	T1.*, 
	T1.[Importe de ventas]*100.0/T2.Total "Porcentaje"
FROM T1 CROSS JOIN T2;
GO


-- Ejercicio 7

WITH
T1 AS (
	SELECT 
		C.CompanyName, P.ProductName,
		COUNT(DISTINCT O.OrderID) "Cantidad Pedidos",
		SUM(od.Quantity) "Cantidad Productos"
	FROM Northwind..[Order Details] OD
	JOIN Northwind..Orders O ON OD.OrderID = O.OrderID
	JOIN Northwind..Customers C ON O.CustomerID = C.CustomerID
	JOIN Northwind..Products P ON OD.ProductID = P.ProductID
	GROUP BY C.CompanyName, P.ProductName
),
T2 AS (
	SELECT T1.CompanyName, MAX(T1.[Cantidad Productos]) VALOR_MAXIMO
	FROM T1
	GROUP BY T1.CompanyName
)
SELECT T1.*
FROM T1 JOIN T2 ON T1.CompanyName=T2.CompanyName AND T1.[Cantidad Productos]=T2.VALOR_MAXIMO
ORDER BY 1,2;
GO

-- Verificando la cantidad de pedidos
SELECT COUNT(1) FROM Northwind..Orders;
go

-- Verificando la cantidad de productos
SELECT SUM(Quantity) FROM Northwind..[Order Details];
GO


-- Problema 6
WITH 
T1 AS (
	SELECT 
		O.ShipCountry,
		COUNT(DISTINCT O.OrderID) "CANTIDAD PEDIDOS",
		SUM(OD.Quantity) "CANTIDAD PRODUCTOS",
		SUM(OD.Quantity*OD.UnitPrice) "IMPORTE"
	FROM Northwind..Orders O
	JOIN Northwind..[Order Details] OD
	ON O.OrderID = OD.OrderID
	GROUP BY O.ShipCountry
),
T2 AS (SELECT SUM(T1.IMPORTE) TOTAL FROM T1)
SELECT 
	T1.*, 
	T1.IMPORTE*100.0/T2.TOTAL PORCENTAJE
FROM T1 CROSS JOIN T2 
ORDER BY 1;
GO


