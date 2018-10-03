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
--Ejercicio N°01
CREATE VIEW VW_Empleados AS
SELECT employee id, last name_employee, department id
FROM employees;
GO

--Ejercicio N°02
SELECT employee, department id
FROM VW_Empleados;

--Ejercicio N°03
CREATE VIEW VW_Dept50 AS
SELECT employee_id EmpNo, last name_employee, department_id DeptNo
FROM employees
WHERE department_id = 50;
GO

--Ejercicio N°04
UPDATE VW_Dept50
SET DeptNo = 80;
GO

--Ejercicio N°05
create sequence SEQ_Departamentos_ID start with 200 increment by 10 maxvalue 1000 minvalue
200;

--Ejercicio N°06
declare @liCodigo int select @liCodigo = next value for SEQ_Departamentos_ID insert into
departments values(@liCodigo,'matematica','300','3300') select * from departments

--Ejercicio N°07
CREATE INDEX Indice_no_unico ON departments (department_name);

--Ejercicio N°08
EXECUTE sp_addlinkedserver Server1; GO CREATE SYNONYM EMP FOR Server1.AdventureWorks2012
GO
