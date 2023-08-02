/* EJERCICIO 4 */

/* 4.1 */
SELECT nombre
FROM peliculas;

/* 4.2 */
SELECT DISTINCT calificacionedad
FROM peliculas;

/* 4.3 */
SELECT *
FROM peliculas
WHERE calificacionedad IS NULL;

/* 4.4 */
SELECT *
FROM salas
WHERE pelicula IS NULL;

/* 4.5 */
SELECT *
FROM salas
LEFT JOIN peliculas
ON salas.pelicula = peliculas.codigo;

/* 4.6 */
SELECT *
FROM peliculas
LEFT JOIN salas
ON salas.pelicula = peliculas.codigo;

/* 4.7*/
SELECT peliculas.nombre
FROM peliculas
LEFT JOIN salas
ON salas.pelicula = peliculas.codigo
WHERE salas.pelicula IS NULL;

/* 4.8 */
INSERT INTO peliculas (codigo, nombre, calificacionedad) VALUES
(10, 'Uno, Dos, Tres', 7);

/* 4.9 */
UPDATE peliculas SET calificacionedad = 13
WHERE calificacionedad IS NULL;

/* 4.10 */
DELETE FROM salas
WHERE pelicula IN (
	 SELECT codigo
	 FROM peliculas
	 WHERE calificacionedad = 'G'
);