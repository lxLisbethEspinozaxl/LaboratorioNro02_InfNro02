﻿/*
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


/*ACTIVIDAD 1 - MAIPULACION DE DATOS

EJERCICIO 1

El departamento de Recursos Humanos requiere crear sentencias SQL para insertar, actualizar y
eliminar datos de empleados. Como prueba se utilizará la tabla Mis_Empleados antes de remitir las
sentencias al departamento de Recursos Humanos*/


USE Human_ResourcesDB
GO

/*
EJERCICIO 2

Crear la tabla Mis_Empleados utilizando la siguiente estructura.*/

USE Human_ResourcesDB;


CREATE TABLE Mis_Empleados (
			empleados_id	int not null,
			apellidos		varchar(25),
			nombres			varchar(25),
			codigo			varchar(10),
			salario			decimal(9,2)
			)
GO

EXEC sp_help 'Mis_Empleados';

insert into Mis_Empleados values (1, 'Vargas Canseco','Raul', 'rvargas', 895),(2, 'Castro Feria',
'Mara','mcastro', 860);
go

create proc insertar_datos @id int, @ape varchar(25), @nom varchar(25), @cod varchar(10), @sal decimal(9,2)
as
insert into Mis_Empleados values (@id,@ape,@nom,@cod,@sal);
go

exec insertar_datos 3, 'Gomez Alban','Juan Pablo','jgomez',1100;
exec insertar_datos 4, 'Quiroz Ardiles','Judith','jquiroz',750;
exec insertar_datos 5, 'Soria Peralta','Pedro','psoria',1550;
go

select * from Mis_Empleados
go


update Mis_Empleados set nombres='Benjamin' where empleados_id=3;
go


update Mis_Empleados set salario=1000 where salario<1000;
go


delete from Mis_Empleados where codigo='mcastro';
go

select [Begin Time],[RowLog Contents 1],[Transaction Name],Operation
from sys.fn_dblog(NULL,NULL)
where AllocUnitName='dbo.Mis_Empleados' and Operation IN ('LOP DELETE ROWS')
go


select * from Mis_Empleados
go


exec insertar_datos 6,'Hurtado Gamboa','Ernesto','ehurtado',1400
go


select * from Mis_Empleados
go


begin tran;
save tran p1;


delete from Mis_Empleados;

select * from Mis_Empleados;

rollback tran p1;

select * from Mis_Empleados

select [Begin Time],[RowLog Contents 1],[Transaction Name],Operation
from sys.fn_dblog(NULL,NULL)
where AllocUnitName='dbo.Mis_Empleados' and Operation IN ('LOP DELETE ROWS')
go


alter proc insertar_datos @id int, @ape varchar(25), @nom varchar(25), @sal decimal(9,2)
as
declare @cod varchar(10);
set @cod = LEFT(@nom,1) + @ape;
insert into Mis_Empleados values (@id,@ape,@nom,@cod,@sal);
go