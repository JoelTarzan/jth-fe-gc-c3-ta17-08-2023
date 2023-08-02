/* EJERCICIO 3 */

/* 3.1 */
SELECT *
FROM almacenes;

/* 3.2 */
SELECT *
FROM cajas
WHERE valor > 150;

/* 3.3 */
SELECT DISTINCT contenido
FROM cajas;

/* 3.4 */
SELECT AVG(valor)
FROM cajas;

/* 3.5 */
SELECT almacen, AVG(valor)
FROM cajas
GROUP BY almacen;

/* 3.6 */
SELECT almacen, AVG(valor)
FROM cajas
GROUP BY almacen
HAVING AVG(valor) > 150;

/* 3.7 */
SELECT cajas.numreferencia, almacenes.lugar
FROM cajas
INNER JOIN almacenes
ON cajas.almacen = almacenes.codigo;

/* 3.8 */
SELECT almacen, COUNT(*)
FROM cajas
GROUP BY almacen;

/* 3.9 */
SELECT codigo
FROM almacenes
WHERE capacidad < (
	SELECT COUNT(*)
    FROM cajas
    WHERE cajas.almacen = almacenes.codigo
);

/* 3.10 */
SELECT numreferencia
FROM cajas
INNER JOIN almacenes
ON cajas.almacen = almacenes.codigo
WHERE almacenes.lugar = 'Bilbao';

/* 3.11 */
INSERT INTO almacenes (codigo, lugar, capacidad) VALUES
(6, 'Barcelona', 3);

/* 3.12 */
INSERT INTO cajas (numreferencia, contenido, valor, almacen) VALUES
('H5RT', 'Papel', 200, 2);

/* 3.13 */
UPDATE cajas SET valor = valor * 0.85;

/* 3.14 */
UPDATE cajas c
INNER JOIN (
    SELECT AVG(valor) AS media
    FROM cajas
) AS ca 
ON c.valor > ca.media
SET c.valor = c.valor * 0.8;

/* 3.15 */
DELETE 
FROM cajas
WHERE valor < 100;

/* 3.16 */
DELETE c
FROM cajas c
INNER JOIN (
	SELECT a.codigo
	FROM almacenes a
	LEFT JOIN cajas c
	ON a.codigo = c.almacen
	GROUP BY a.codigo, a.capacidad
	HAVING COUNT(c.numreferencia) > a.capacidad
) AS al
ON c.almacen = al.codigo;