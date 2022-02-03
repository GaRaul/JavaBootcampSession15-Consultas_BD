use actividades;

#Ejercicio 2.1:
SELECT APELLIDOS FROM empleados;

#Ejercicio 2.2:
SELECT APELLIDOS FROM empleados
GROUP BY APELLIDOS;

#Ejercicio 2.3:
SELECT * FROM empleados 
WHERE APELLIDOS = 'López';

#Ejercicio 2.4:
SELECT * FROM empleados 
WHERE APELLIDOS = 'López' OR APELLIDOS = 'Pérez';

#Ejercicio 2.5:
SELECT * FROM empleados 
WHERE DEPARTAMENTO = 14;

#Ejercicio 2.6:
SELECT * FROM empleados 
WHERE DEPARTAMENTO = 37 OR DEPARTAMENTO = 77;

#Ejercicio 2.7:
SELECT * FROM empleados 
WHERE APELLIDOS RLIKE '^P';

#Ejercicio 2.8:
SELECT SUM(PRESUPUESTO) AS PRESUPUESTO_DEPARTAMENTOS
FROM departamentos;

#Ejercicio 2.9:
SELECT COUNT(DEPARTAMENTO) from empleados
GROUP BY DEPARTAMENTO;

#Ejercicio 2.10:
SELECT * 
FROM empleados
INNER JOIN departamentos
ON empleados.DEPARTAMENTO = departamentos.CODIGO;

#Ejercicio 2.11:
SELECT empleados.NOMBRE, empleados.APELLIDOS, departamentos.NOMBRE, departamentos.PRESUPUESTO
FROM (departamentos
INNER JOIN empleados ON departamentos.CODIGO = empleados.DEPARTAMENTO);

#Ejercicio 2.12:
SELECT empleados.NOMBRE, empleados.APELLIDOS, departamentos.PRESUPUESTO
FROM (departamentos
INNER JOIN empleados ON departamentos.CODIGO = empleados.DEPARTAMENTO)
HAVING (departamentos.PRESUPUESTO) > 60000;

#Ejercicio 2.13:
SELECT empleados.NOMBRE, empleados.APELLIDOS, departamentos.PRESUPUESTO
FROM (departamentos
INNER JOIN empleados ON departamentos.CODIGO = empleados.DEPARTAMENTO)
HAVING (departamentos.PRESUPUESTO) > (SELECT avg(PRESUPUESTO) FROM departamentos);

#Ejercicio 2.14:
SELECT departamentos.NOMBRE
FROM (departamentos
INNER JOIN empleados ON departamentos.CODIGO = empleados.DEPARTAMENTO)
GROUP BY DEPARTAMENTO
HAVING COUNT(departamentos.CODIGO) > 2;

#Ejercicio 2.15:
INSERT INTO departamentos values
(11, 'Calidad', 40000);
SELECT * FROM departamentos;
INSERT INTO empleados values
(89267109, 'Esther', 'Vázquez', 11);
SELECT * FROM empleados;

#Ejercicio 2.16:
UPDATE departamentos SET PRESUPUESTO = PRESUPUESTO / 1.10;

#Ejercicio 2.17:
UPDATE empleados SET DEPARTAMENTO = 14
WHERE DEPARTAMENTO = 77;

#Ejercicio 2.18:
DELETE FROM empleados WHERE DEPARTAMENTO = 14;

#Ejercicio 2.19:
DELETE actividades.empleados 
FROM empleados
INNER JOIN departamentos ON empleados.DEPARTAMENTO = departamentos.CODIGO
WHERE departamentos.PRESUPUESTO > 60000;

#Ejercicio 2.20:
TRUNCATE empleados;