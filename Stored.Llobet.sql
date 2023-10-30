USE transportes_san_daniel;

-- ORDENAR FACTURAS POR ORDEN DE EMISION
DELIMITER $$
CREATE PROCEDURE ordenador_facturas()
BEGIN
    SELECT * FROM facturas
    ORDER BY fecha_factura;
END $$
DELIMITER ;

-- LLAMADO DEL STORED PROCEDURE
CALL ordenador_facturas();




-- ANTES DEL ACTUALIZADO DE COLUMNA ESTATUS (CREACION Y ACTUALIZACION AL LLAMADO)
select * from orden_despacho;


DELIMITER $$
CREATE PROCEDURE actualizar_estatus_entrega()
BEGIN
    -- CREACION COLUMNA ESTATUS
    IF NOT EXISTS (SELECT * FROM information_schema.COLUMNS WHERE TABLE_NAME = 'orden_despacho' AND COLUMN_NAME = 'estatus') 
    THEN ALTER TABLE orden_despacho
	ADD estatus VARCHAR(20);
END IF;
    
    -- ACTUALIZACION DEL ESTATUS
    UPDATE orden_despacho
    SET estatus = CASE
	WHEN DATEDIFF(fecha_recepcion, fecha_orden_despacho) <= 2 THEN 'Entrega Puntual'
	ELSE 'Entrega Atrasada'
END;
END;
$$
DELIMITER ;

CALL actualizar_estatus_entrega();

-- DESPUES DEL ACTUALIZADO DE ESTATUS
select * from orden_despacho;