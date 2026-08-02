----------------------------------------------------------------------------------------------------
-- ══════════════════════════════════════════
-- MiniStore — Soluciones con Outer JOINs
-- Autor: Constanza Barone
-- Fecha: 02/08/2026
-- ══════════════════════════════════════════

-- ── CONSULTA 1: LEFT JOIN ─────────────────
-- Pregunta de negocio: ¿Qué productos del catálogo nunca fueron vendidos?
-- Mostrá todos los productos y sus ventas asociadas.
-- Los productos sin ventas aparecerán con NULL en las columnas de ventas.

SELECT
P.producto_id,
V.venta_id
FROM productos AS P
LEFT JOIN ventas AS V
ON P.producto_id = V.producto_id;


-- ── CONSULTA 2: RIGHT JOIN ────────────────
-- Pregunta de negocio: ¿Existen ventas registradas con productos
-- que no figuran en nuestro catálogo? (posible error de carga de datos)
-- Los registros huérfanos aparecerán con NULL en las columnas de productos.

SELECT
P.producto_id,
V.venta_id
FROM productos AS P
RIGHT JOIN ventas AS V
ON P.producto_id = V.producto_id;



-- ── CONSULTA 3: FULL OUTER JOIN ───────────
-- Pregunta de negocio: Vista completa de auditoría que muestre
-- todos los productos y todas las ventas sin perder ninguna fila,
-- identificando tanto productos sin ventas como ventas sin producto.

SELECT
P.producto_id,
V.venta_id
FROM productos AS P
FULL OUTER JOIN ventas AS V
ON P.producto_id = V.producto_id;

