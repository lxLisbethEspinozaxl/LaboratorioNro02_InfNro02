
--Ejercicio N¡Æ01
CREATE VIEW VW_Empleados AS
SELECT employee id, last name employee, department id
FROM employees;
GO

--Ejercicio N¡Æ02
SELECT employee, department id
FROM VW_Empleados;

--Ejercicio N¡Æ03
CREATE VIEW VW_Dept50 AS
SELECT employee_id EmpNo, last name_employee, department_id DeptNo
FROM employees
WHERE department_id = 50;
GO

--Ejercicio N¡Æ04
UPDATE VW_Dept50
SET DeptNo = 80;
GO

--Ejercicio N¡Æ05
create sequence SEQ_Departamentos ID start with 200 increment by 10 maxvalue 1000 minvalue
200;

--Ejercicio N¡Æ06
declare @liCodigo int select @liCodigo = next value for SEQ_Departamentos_ID insert into
departments values(@liCodigo,'matematica','300','3300') select * from departments

--Ejercicio N¡Æ07
CREATE INDEX Indice_no_unico ON departments (department_name);

--Ejercicio N¡Æ08
EXECUTE sp_addlinkedserver Server1; GO CREATE SYNONYM EMP FOR Server1.AdventureWorks2012.
GO