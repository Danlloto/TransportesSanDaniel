USE transportes_san_daniel

-- FUNCION PARA VER CANTIDAD DE VENTAS REALIZADAS EN EL MES --
DELIMITER $$
CREATE FUNCTION funcion_ventas_mensuales(mes INT, anio INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE numero_ventas_mensuales INT;
    
    SELECT COUNT(*) INTO numero_ventas_mensuales
    FROM facturas
    WHERE YEAR(fecha_factura) = anio AND MONTH(fecha_factura) = mes;

    RETURN numero_ventas_mensuales;
END;
$$

SET @mes = 1; -- COLOCAR ACA MES...!!!!
SET @anio = 2023; -- COLOCAR ACA ANIO...!!!!
SELECT funcion_ventas_mensuales(@mes, @anio) AS numero_ventas_mensuales;


-- FUNCION PARA VER CANTIDAD DE IMPUESTO MENSUAL A RENDIR EN EL MES 19% IVA --
DELIMITER $$
CREATE FUNCTION funcion_impuesto_mensual_iva(mes INT, anio INT)
RETURNS DECIMAL(20, 2)
DETERMINISTIC
BEGIN
    DECLARE impuesto_mensual_iva DECIMAL(20, 2);
    
    SELECT SUM(impuesto) INTO impuesto_mensual_iva
    FROM facturas
    WHERE YEAR(fecha_factura) = anio AND MONTH(fecha_factura) = mes;

    RETURN impuesto_mensual_iva;
END;
$$

SET @mes = 1;  -- COLOCAR ACA MES...!!!!
SET @anio = 2023; -- COLOCAR ACA ANIO...!!!!
SELECT funcion_impuesto_mensual_iva(@mes, @anio) AS impuesto_mensual_iva;