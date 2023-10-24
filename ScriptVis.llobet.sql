use transportes_san_daniel;

CREATE VIEW total_Ventas_2023 AS
SELECT fecha_factura, total_pagar
FROM facturas
WHERE YEAR(fecha_factura) = 2023;

SELECT * FROM total_ventas_2023;

CREATE VIEW ventas_supervisores AS
SELECT f.id_vendedor, v.nombre, v.apellido, v.cargo, f.total_pagar
FROM facturas f
INNER JOIN vendedores v ON f.id_vendedor = v.id_vendedor
WHERE v.cargo = 'VENDEDOR SUPERVISOR';

SELECT * FROM ventas_supervisores;

CREATE VIEW ventas_comuna_santiago AS
SELECT f.id_direccion, v.comuna, f.fecha_factura, f.total_pagar
FROM facturas f
INNER JOIN direcciones v ON f.id_direccion = v.id_direccion
WHERE v.comuna = 'santiago';

SELECT * FROM ventas_comuna_santiago;

CREATE VIEW entregas_tardias AS
SELECT *
FROM orden_despacho
WHERE DATEDIFF(fecha_recepcion, fecha_orden_despacho) > 3;

SELECT * FROM entregas_tardias;

CREATE VIEW entregas_tardias_chofer AS
SELECT o.*, v.nombre_chofer, v.apellido_chofer
FROM entregas_tardias o
INNER JOIN vehiculos v ON o.id_vehiculos = v.id_vehiculos;

SELECT * FROM entregas_tardias_chofer;