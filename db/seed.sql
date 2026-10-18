-- 3 Categorías
INSERT INTO categorias (nombre) VALUES ('Electrónica'), ('Ropa'), ('Hogar');

-- 12 Productos
INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES 
('Televisor', 1, 3000.00, 10), ('Celular', 1, 300.00, 3), ('Auriculares', 1, 50.00, 20),
('Camisa', 2, 25.00, 50), ('Pantalón', 2, 40.00, 2), ('Zapatos', 2, 60.00, 15),
('Sartén', 3, 300.00, 8), ('Plato', 3, 10.00, 100), ('Vaso', 3, 5.00, 1),
('Laptop', 1, 8000.00, 4), ('Chaqueta', 2, 70.00, 12), ('Lámpara', 3, 20.00, 25);

-- 6 Clientes
INSERT INTO clientes (nombre, telefono, email) VALUES 
('Ana', '111', 'ana@mail.com'), ('Luis', '222', 'luis@mail.com'), 
('Carlos', '333', 'carlos@mail.com'), ('Marta', '444', 'marta@mail.com'), 
('Pedro', '555', 'pedro@mail.com'), ('Sofia', '666', 'sofia@mail.com');

-- 10 Pedidos
INSERT INTO pedidos (cliente_id, fecha, estado) VALUES 
(1, '2023-10-01', 'Enviado'), (2, '2023-10-02', 'Pendiente'), (1, '2023-10-03', 'Entregado'), 
(3, '2023-10-04', 'Enviado'), (4, '2023-10-05', 'Pendiente'), (2, '2023-10-06', 'Entregado'), 
(5, '2023-10-07', 'Enviado'), (6, '2023-10-08', 'Pendiente'), (1, '2023-10-09', 'Enviado'), 
(3, '2023-10-10', 'Entregado');

-- 25 Líneas de detalle
INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES 
(1, 1, 1, 500.00), (1, 4, 2, 25.00), (2, 2, 1, 300.00), (3, 7, 1, 30.00), (3, 8, 4, 10.00),
(4, 3, 2, 50.00), (5, 10, 1, 800.00), (6, 5, 1, 40.00), (7, 6, 1, 60.00), (8, 11, 1, 70.00),
(9, 12, 2, 20.00), (9, 9, 1, 5.00), (10, 1, 1, 500.00), (10, 3, 1, 50.00), (2, 4, 1, 25.00),
(4, 5, 2, 40.00), (5, 6, 1, 60.00), (6, 7, 1, 30.00), (7, 8, 10, 10.00), (8, 9, 5, 5.00),
(9, 10, 1, 800.00), (10, 11, 1, 70.00), (1, 12, 1, 20.00), (2, 1, 1, 500.00), (3, 2, 1, 300.00);