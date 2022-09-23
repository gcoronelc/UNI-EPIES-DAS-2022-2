/*

Cuantas personas son hombres y cuantas personas son mujeres por distrito de lima.

Criterio de agrupamiento 1: Distrito
Criterio de agrupamiento 2: Sexo

*/


/*
Requerimiento 1
Se necesita saber las ventas totales por producto, en cada categoría.
Base de datos: Northwind

Criterio de agrupamiento 1: Categoria
Criterio de agrupamiento 2: Producto

CANTIDAD:  Sumar la cantidad
IMPORTE: Sumar la cantidad * Precio

*/

USE Northwind;
GO

-- Solucion
SELECT 
	C.CategoryName, P.ProductName,
	SUM(OD.Quantity) CANTIDAD,
	SUM(OD.Quantity*OD.UnitPrice) IMPORTE
FROM [Order Details] OD
JOIN Products P ON OD.ProductID = P.ProductID
JOIN Categories C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryName, P.ProductName
ORDER BY 1, 2;
GO

-- Verificar
SELECT 
	SUM(OD.Quantity) CANTIDAD,
	SUM(OD.Quantity*OD.UnitPrice) IMPORTE
FROM [Order Details] OD
GO


