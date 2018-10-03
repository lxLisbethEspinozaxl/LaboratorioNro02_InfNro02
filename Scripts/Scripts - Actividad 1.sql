/*

LAB N2: ACTIVIDAD 1 - EJERCICIO 2

*/

USE Human_Resources;


-----------------------------------------Scripts de Consultas-------------------------------------------
--LABORATORIO 2--------------------------------------------------------------------------------------------------------


/*ACTIVIDAD 1 - MAIPULACION DE DATOS

EJERCICIO 1

El departamento de Recursos Humanos requiere crear sentencias SQL para insertar, actualizar y
eliminar datos de empleados. Como prueba se utilizará la tabla Mis_Empleados antes de remitir las
sentencias al departamento de Recursos Humanos*/


USE Human_Resources
GO



/*
EJERCICIO 2

Crear la tabla Mis_Empleados utilizando la siguiente estructura.*/

USE Human_Resources;

CREATE TABLE Mis_Empleados (
			empleados_id	int not null,
			apellidos		varchar(25),
			nombres			varchar(25),
			codigo			varchar(10),
			salario			decimal(9,2)
			)
GO

EXEC sp_help 'Mis_Empleados';