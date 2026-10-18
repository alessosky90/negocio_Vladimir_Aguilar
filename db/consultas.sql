-- 1. Productos con el nombre de su categoría, ordenados por nombre
SELECT p.nombre AS producto, c.nombre AS categoria 
FROM productos p JOIN categorias c ON p.categoria_id = c.id 
ORDER BY p.nombre;

-- 2. Productos con menos de 5 unidades en stock
SELECT nombre, stock FROM productos WHERE stock < 5;

-- 3. Precio promedio por categoría
SELECT categoria_id, AVG(precio) AS promedio_precio 
FROM productos GROUP BY categoria_id;

-- 4. Pedidos de un cliente con su fecha y estado
SELECT p.id AS pedido, p.fecha, p.estado, c.nombre AS cliente 
FROM pedidos p JOIN clientes c ON p.cliente_id = c.id 
WHERE c.nombre = 'Ana';

-- 5. Total en dinero de cada pedido
SELECT pedido_id, SUM(cantidad * precio_unitario) AS total_dinero 
FROM detalle_pedido GROUP BY pedido_id;

-- 6. Clientes con más de 2 pedidos
SELECT c.nombre, COUNT(p.id) AS total_pedidos 
FROM clientes c JOIN pedidos p ON c.id = p.cliente_id 
GROUP BY c.id HAVING COUNT(p.id) > 2;

-- 7. Eliminar un cliente sin pedidos
DELETE FROM clientes WHERE id NOT IN (SELECT cliente_id FROM pedidos);