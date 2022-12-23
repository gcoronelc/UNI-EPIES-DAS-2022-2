

select idciudad id, nombre etiqueta from ciudad;
go

select * from ruta;
go

select idciudad id, nombre etiqueta from ciudad
where idciudad <> 1
and idciudad not in (select destino from ruta where origen=1)


select * from bus;







