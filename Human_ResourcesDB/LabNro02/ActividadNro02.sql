/*
Plantilla de script posterior a la implementación							
--------------------------------------------------------------------------------------
 Este archivo contiene instrucciones de SQL que se anexarán al script de compilación.		
 Use la sintaxis de SQLCMD para incluir un archivo en el script posterior a la implementación.			
 Ejemplo:      :r .\miArchivo.sql								
 Use la sintaxis de SQLCMD para hacer referencia a una variable en el script posterior a la implementación.		
 Ejemplo:      :setvar TableName miTabla							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
--Ejercicio 01
CREATE TABLE dbo.Departamento  
   (ID int PRIMARY KEY NOT NULL,  
    NOMBRE varchar(25))
GO 

--Ejercicio 02
CREATE TABLE dbo.Empleado  
   (ID int PRIMARY KEY NOT NULL,  
    APELLIDOS varchar(25),  
    NOMBRES varchar(25),  
    DEPT_ID int NOT NULL)  
GO 

--Ejercicio 03
insert INTO  dbo.Departamento(ID,NOMBRE)
VALUES (001,'RR.HH'),( 002,'Finanzas'),( 003,'Secretaria'), (004,'Almacen')
GO

select*from dbo.Departamento

--Ejercicio 04
CREATE TABLE dbo.Empleado2
   (EMPLOYEE_ID int PRIMARY KEY NOT NULL,  
    FIRST_NAME varchar(40),  
    LAST_NAME varchar(40),  
    SALARY nvarchar(7),
	DEPARMENT_ID INT)  
GO 

--alter table dbo.Empleado2 set Read_Only

--Ejercicio 06
insert dbo.Empleado2 (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,DEPARMENT_ID)
VALUES(35,'Alberto','Fernandez',4500.00,10)
GO

--Ejercicio 08
DROP TABLE dbo.Empleado2
GO