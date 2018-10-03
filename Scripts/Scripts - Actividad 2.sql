
CREATE TABLE dbo.Departamento  
   (ID int PRIMARY KEY NOT NULL,  
    NOMBRE varchar(25))
GO 

CREATE TABLE dbo.Empleado  
   (ID int PRIMARY KEY NOT NULL,  
    APELLIDOS varchar(25),  
    NOMBRES varchar(25),  
    DEPT_ID int NOT NULL)  
GO 

insert INTO  dbo.Departamento(ID,NOMBRE)
VALUES (001,'RR.HH'),( 002,'Finanzas'),( 003,'Secretaria'), (004,'Almacen')
GO

select*from dbo.Departamento


CREATE TABLE dbo.Empleado2
   (EMPLOYEE_ID int PRIMARY KEY NOT NULL,  
    FIRST_NAME varchar(40),  
    LAST_NAME varchar(40),  
    SALARY nvarchar(7),
	DEPARMENT_ID INT)  
GO 

alter table dbo.Empleado2 set Read_Only

insert dbo.Empleado2 (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,DEPARMENT_ID)
VALUES(35,'Alberto','Fernandez',4500.00,10)
GO

DROP TABLE dbo.Empleado2
GO
