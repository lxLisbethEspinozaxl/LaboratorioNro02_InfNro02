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