/* EJERCICIO 2 */

/* 2.1 */
SELECT apellidos
FROM empleados;

/* 2.2 */
SELECT DISTINCT apellidos
FROM empleados;

/* 2.3 */
SELECT *
FROM empleados
WHERE apellidos = 'Smith';

/* 2.4 */
SELECT *
FROM empleados
WHERE apellidos = 'Smith' OR apellidos = 'Rogers';

/* 2.5 */
SELECT *
FROM empleados
WHERE departamento = 14;

/* 2.6 */
SELECT *
FROM empleados
WHERE departamento = 37 OR departamento = 77;

/* 2.7 */
SELECT *
FROM empleados
WHERE apellidos LIKE 'p%';

/* 2.8 */
SELECT SUM(presupuesto) 
FROM departamentos;

/* 2.9 */
SELECT departamento, COUNT(*)
FROM empleados
GROUP BY departamento;

/* 2.10 */
SELECT *
FROM empleados
INNER JOIN departamentos
ON empleados.departamento = departamentos.codigo;

/* 2.11 */
SELECT empleados.nombre, empleados.apellidos, departamentos.nombre, departamentos.presupuesto
FROM empleados
INNER JOIN departamentos
ON empleados.departamento = departamentos.codigo;

/* 2.12 */
SELECT empleados.nombre, empleados.apellidos
FROM empleados
INNER JOIN departamentos
ON empleados.departamento = departamentos.codigo
WHERE departamentos.presupuesto > 60000;

/* 2.13 */
SELECT *
FROM departamentos
WHERE departamentos.presupuesto > (
	SELECT AVG(presupuesto)
    FROM departamentos
);

/* 2.14 */
SELECT nombre
FROM departamentos
WHERE codigo IN (
	SELECT departamento
	FROM empleados
	GROUP BY departamento
	HAVING COUNT(*) > 2 
 );

/* 2.15 */
INSERT INTO departamentos (codigo, nombre, presupuesto) VALUES
( 11 , 'Calidad' , 40000);

INSERT INTO empleados (dni, nombre, apellidos, departamento) VALUES
('89267109', 'Esther', 'Vázquez', 11);

/* 2.16 */
UPDATE departamentos SET presupuesto = presupuesto * 0.9;

/* 2.17 */
UPDATE empleados SET departamento = 14 
WHERE departamento = 77;

/* 2.18 */
DELETE FROM empleados
WHERE departamento = 14;

/* 2.19 */
DELETE FROM empleados
WHERE departamento IN (
	SELECT codigo 
	FROM departamentos 
	WHERE presupuesto >= 60000
);

/* 2.20 */
DELETE
FROM empleados;