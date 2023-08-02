/* EJERCICIO 1 */

/* 1.1 */
SELECT nombre
FROM articulos;

/* 1.2 */
SELECT nombre, precio
FROM articulos;

/* 1.3 */
SELECT nombre
FROM articulos
WHERE precio <= 200;

/* 1.4 */
SELECT *
FROM articulos
WHERE precio BETWEEN 60 AND 121;

/* 1.5 */
SELECT nombre, precio*166.386 AS 'precio en pesetas'
FROM articulos;

/* 1.6 */
SELECT AVG(precio)
FROM articulos;

/* 1.7 */
SELECT AVG(precio)
FROM articulos
WHERE fabricante = 2;

/* 1.8 */
SELECT COUNT(nombre)
FROM articulos
WHERE precio >= 180;

/* 1.9 */
SELECT nombre, precio
FROM articulos
WHERE precio >= 180
ORDER BY precio DESC, nombre;

/* 1.10 */
SELECT *
FROM articulos
LEFT JOIN fabricantes
ON articulos.fabricante = fabricantes.codigo;

/* 1.11 */
SELECT articulos.nombre, articulos.precio, fabricantes.nombre
FROM articulos
LEFT JOIN fabricantes
ON articulos.fabricante = fabricantes.codigo;

/* 1.12 */
SELECT fabricante, AVG(precio)
FROM articulos
GROUP BY fabricante;

/* 1.13 */
SELECT fabricantes.nombre, AVG(articulos.precio)
FROM articulos
LEFT JOIN fabricantes
ON articulos.fabricante = fabricantes.codigo
GROUP BY fabricantes.codigo;

/* 1.14 */
SELECT fabricantes.nombre, AVG(articulos.precio)
FROM articulos
LEFT JOIN fabricantes
ON articulos.fabricante = fabricantes.codigo
GROUP BY fabricantes.codigo
HAVING AVG(articulos.precio) >= 150;

/* 1.15 */
SELECT nombre, precio
FROM articulos
ORDER BY precio
LIMIT 1;

/* 1.16 */
SELECT fabricantes.nombre, articulos.nombre, articulos.precio
FROM articulos
INNER JOIN fabricantes
ON articulos.fabricante = fabricantes.codigo
WHERE articulos.precio = (
	SELECT MAX(ar.precio)
    FROM articulos ar
    WHERE ar.fabricante = fabricantes.codigo
);

/* 1.17 */
INSERT INTO articulos (codigo, nombre, precio, fabricante) VALUES
(11, 'Altavoces', 70, 2);

/* 1.18 */
UPDATE articulos SET nombre = 'Impresora Laser' 
WHERE codigo = 8;

/* 1.19 */
UPDATE articulos SET precio = precio * 0.9;

/* 1.20 */
UPDATE articulos SET precio = precio - 10
WHERE precio >= 120;

