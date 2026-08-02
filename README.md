# Módulo 5 - JOINs en SQL

¿Por qué usé LEFT JOIN para la Consulta 1 y no INNER JOIN? ¿Qué se perdería si usara INNER JOIN?

Utilicé **LEFT JOIN** porque la consigna pedía mostrar todos los productos del catálogo, incluso aquellos que nunca fueron vendidos. De esta forma, los productos sin ventas aparecen igualmente en el resultado con valores `NULL` en las columnas de la tabla de ventas.

Si hubiera utilizado **INNER JOIN**, solo se mostrarían los productos que tienen al menos una venta asociada. En este caso, se perderían los productos **108 y 109**, que no registran ventas y justamente eran los que la consulta buscaba identificar.

---

¿Por qué usé RIGHT JOIN para la Consulta 2? ¿Qué tabla está a la izquierda y cuál a la derecha?

Utilicé **RIGHT JOIN** porque la consigna pedía verificar si existían ventas registradas con productos que no figuraban en el catálogo.

En la consulta, la tabla **productos** está a la izquierda y la tabla **ventas** está a la derecha. Al utilizar RIGHT JOIN, se conservan todas las filas de la tabla **ventas**, incluso aquellas que no encuentran coincidencia en la tabla **productos**.

---

¿Qué representan los valores NULL en cada resultado?

Los valores **NULL** indican que no existe una coincidencia entre las tablas.

En la **Consulta 1 (LEFT JOIN)**, cuando `venta_id` aparece como `NULL`, significa que ese producto no tiene ninguna venta registrada. En este ejercicio ocurrió con los productos **108 y 109**.

En la **Consulta 2 (RIGHT JOIN)**, cuando `producto_id` aparece como `NULL`, significa que existe una venta cuyo producto no figura en el catálogo. En este caso, la **venta 10** hace referencia a un producto inexistente.

---

¿Cuándo usaría FULL OUTER JOIN en un caso real de negocio?

Utilizaría **FULL OUTER JOIN** cuando necesitara realizar una auditoría completa entre dos tablas y quisiera identificar todas las inconsistencias posibles. Por ejemplo, para detectar tanto productos que nunca fueron vendidos como ventas que hacen referencia a productos inexistentes. De esta manera, no se pierde información de ninguna de las dos tablas y es posible identificar errores de carga o problemas de integridad de los datos.
