
select * from cliente;

SELECT IDCLIENTE,NOMBRE,APELLIDO,DNI,DISTRITO,CORREO,TELEFONO 
FROM CLIENTE
WHERE IDCLIENTE = IIF(?=0,IDCLIENTE,?) AND NOMBRE LIKE ? AND APELLIDO LIKE ?

select * from contador;

UPDATE CONTADOR SET ULTIMO = ULTIMO + 1 WHERE IDCONTADOR=1;
SELECT ULTIMO FROM CONTADOR WHERE IDCONTADOR=1;


INSERT INTO CLIENTE(IDCLIENTE,NOMBRE,APELLIDO,DNI,DISTRITO,CORREO,TELEFONO) VALUES(?,?,?,?,?,?,?)


UPDATE CLIENTE SET NOMBRE=?,APELLIDO=?,DNI=?,DISTRITO=?,CORREO=?,TELEFONO=? WHERE IDCLIENTE=?

SELECT IDEMPLEADO,USUARIO,CLAVE,IDROL,ACTIVO FROM USUARIO 


SELECT ULTIMO FROM CONTADOR WHERE IDCONTADOR=1;
select * from cliente order by 1 desc;

DELETE FROM CLIENTE WHERE IDCLIENTE=?

select * from usuario;

sp_help usuario



