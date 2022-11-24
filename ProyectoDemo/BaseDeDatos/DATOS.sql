-- Tabla: ROL

INSERT INTO dbo.ROL VALUES(1,'Administrador');
INSERT INTO dbo.ROL VALUES(2,'Vendedor');
INSERT INTO dbo.ROL VALUES(3,'Cajera');
GO

-- Tabla: CARGO

INSERT INTO dbo.CARGO VALUES(1,'Administrador');
INSERT INTO dbo.CARGO VALUES(2,'Empleado');
INSERT INTO dbo.CARGO VALUES(3,'Conductor');
INSERT INTO dbo.CARGO VALUES(4,'Terramosa');
GO

-- Tabla: EMPLEADO

SET IDENTITY_INSERT empleado ON;  

INSERT INTO dbo.EMPLEADO(idempleado,nombre,apellido,distrito,correo,telefono,activo,idcargo)
VALUES(1,'Pedro','Castro','Los Olivos','pcastro@algo.com','985234678',1,1);

INSERT INTO dbo.EMPLEADO(idempleado,nombre,apellido,distrito,correo,telefono,activo,idcargo)
VALUES(2,'Alex','Foster','Independencia','afoster@algo.com','986148577',1,2);

INSERT INTO dbo.EMPLEADO(idempleado,nombre,apellido,distrito,correo,telefono,activo,idcargo)
VALUES(3, 'Damian', 'Zuniga', 'San Martin de Porres','dzuniga@cmail.com','958998412',0,3);

INSERT INTO dbo.EMPLEADO(idempleado,nombre,apellido,distrito,correo,telefono,activo,idcargo)
VALUES(4,'Jose','Martinez','Los Olivos','jmartinez@algo.com','945986421',1,4);

INSERT INTO dbo.EMPLEADO(idempleado,nombre,apellido,distrito,correo,telefono,activo,idcargo)
VALUES(5,'Mariana','Chávez','Rimac','marianach@gmail.com','952780294',1,2);

GO

SET IDENTITY_INSERT empleado OFF;  

SELECT * FROM EMPLEADO;
GO

-- Tabla: USUARIO

INSERT INTO dbo.USUARIO(idempleado,usuario,clave,idrol,activo) VALUES(1,'pcastro','cazador',1,1);
INSERT INTO dbo.USUARIO(idempleado,usuario,clave,idrol,activo) VALUES(2,'afoster','waste',2,1);
INSERT INTO dbo.USUARIO(idempleado,usuario,clave,idrol,activo) VALUES(3,'dzuniga', 'mochila123',3,0);
INSERT INTO dbo.USUARIO(idempleado,usuario,clave,idrol,activo) VALUES(4,'jmartinez','123456',3,1);
INSERT INTO dbo.USUARIO(idempleado,usuario,clave,idrol,activo) VALUES(5,'mchavez', 'dist2004',3,1);
GO


