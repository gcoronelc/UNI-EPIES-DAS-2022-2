--- ejercicio 3:WithT1 AS (Select c.NomCurso,Count(1) "Aulas Programadas",sum(CP.Vacantes+CP.Matriculados) "Vacantes Programadadas",sum(CP.Matriculados) "Matriculados"FROM CursoProgramado CPJOIN Curso c on CP.IdCurso=C.IdCursoWhere CP.IdCiclo='2021-01'group by c.NomCurso)select T1.*, T1.Matriculados*100.0/T1.[Vacantes Programadadas]  "Porcentaje"from T1go----ejercicio 10:select * from Northwind..[Order Details];goWITHT2 AS (SELECT P.ProductName,SUM(od.Quantity) "Cantidad de Productos",SUM(od.Quantity*od.UnitPrice) "Importe de ventas"FROM Northwind..[Order Details] odjoin Northwind..Products P on od.ProductID=P.ProductIDGROUP BY P.ProductName),T3 as(Select SUM(T2.[Importe de ventas]) "Total" from T2)SELECTT2.*,T2.[Importe de ventas]*100.0/T3.Total "Porcentaje"FROM T2 CROSS JOIN T3;GO
