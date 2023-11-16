-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: transportes_san_daniel
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `entregas_tardias`
--

DROP TABLE IF EXISTS `entregas_tardias`;
/*!50001 DROP VIEW IF EXISTS `entregas_tardias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `entregas_tardias` AS SELECT 
 1 AS `id_orden_despacho`,
 1 AS `id_direccion`,
 1 AS `id_vehiculos`,
 1 AS `fecha_orden_despacho`,
 1 AS `fecha_recepcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `entregas_tardias_chofer`
--

DROP TABLE IF EXISTS `entregas_tardias_chofer`;
/*!50001 DROP VIEW IF EXISTS `entregas_tardias_chofer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `entregas_tardias_chofer` AS SELECT 
 1 AS `id_orden_despacho`,
 1 AS `id_direccion`,
 1 AS `id_vehiculos`,
 1 AS `fecha_orden_despacho`,
 1 AS `fecha_recepcion`,
 1 AS `nombre_chofer`,
 1 AS `apellido_chofer`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_ventas_2023`
--

DROP TABLE IF EXISTS `total_ventas_2023`;
/*!50001 DROP VIEW IF EXISTS `total_ventas_2023`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_ventas_2023` AS SELECT 
 1 AS `fecha_factura`,
 1 AS `total_pagar`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventas_comuna_santiago`
--

DROP TABLE IF EXISTS `ventas_comuna_santiago`;
/*!50001 DROP VIEW IF EXISTS `ventas_comuna_santiago`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_comuna_santiago` AS SELECT 
 1 AS `id_direccion`,
 1 AS `comuna`,
 1 AS `fecha_factura`,
 1 AS `total_pagar`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventas_supervisores`
--

DROP TABLE IF EXISTS `ventas_supervisores`;
/*!50001 DROP VIEW IF EXISTS `ventas_supervisores`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_supervisores` AS SELECT 
 1 AS `id_vendedor`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `cargo`,
 1 AS `total_pagar`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `entregas_tardias`
--

/*!50001 DROP VIEW IF EXISTS `entregas_tardias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `entregas_tardias` AS select `orden_despacho`.`id_orden_despacho` AS `id_orden_despacho`,`orden_despacho`.`id_direccion` AS `id_direccion`,`orden_despacho`.`id_vehiculos` AS `id_vehiculos`,`orden_despacho`.`fecha_orden_despacho` AS `fecha_orden_despacho`,`orden_despacho`.`fecha_recepcion` AS `fecha_recepcion` from `orden_despacho` where ((to_days(`orden_despacho`.`fecha_recepcion`) - to_days(`orden_despacho`.`fecha_orden_despacho`)) > 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `entregas_tardias_chofer`
--

/*!50001 DROP VIEW IF EXISTS `entregas_tardias_chofer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `entregas_tardias_chofer` AS select `o`.`id_orden_despacho` AS `id_orden_despacho`,`o`.`id_direccion` AS `id_direccion`,`o`.`id_vehiculos` AS `id_vehiculos`,`o`.`fecha_orden_despacho` AS `fecha_orden_despacho`,`o`.`fecha_recepcion` AS `fecha_recepcion`,`v`.`nombre_chofer` AS `nombre_chofer`,`v`.`apellido_chofer` AS `apellido_chofer` from (`entregas_tardias` `o` join `vehiculos` `v` on((`o`.`id_vehiculos` = `v`.`id_vehiculos`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_ventas_2023`
--

/*!50001 DROP VIEW IF EXISTS `total_ventas_2023`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_ventas_2023` AS select `facturas`.`fecha_factura` AS `fecha_factura`,`facturas`.`total_pagar` AS `total_pagar` from `facturas` where (year(`facturas`.`fecha_factura`) = 2023) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_comuna_santiago`
--

/*!50001 DROP VIEW IF EXISTS `ventas_comuna_santiago`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_comuna_santiago` AS select `f`.`id_direccion` AS `id_direccion`,`v`.`comuna` AS `comuna`,`f`.`fecha_factura` AS `fecha_factura`,`f`.`total_pagar` AS `total_pagar` from (`facturas` `f` join `direcciones` `v` on((`f`.`id_direccion` = `v`.`id_direccion`))) where (`v`.`comuna` = 'santiago') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_supervisores`
--

/*!50001 DROP VIEW IF EXISTS `ventas_supervisores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_supervisores` AS select `f`.`id_vendedor` AS `id_vendedor`,`v`.`nombre` AS `nombre`,`v`.`apellido` AS `apellido`,`v`.`cargo` AS `cargo`,`f`.`total_pagar` AS `total_pagar` from (`facturas` `f` join `vendedores` `v` on((`f`.`id_vendedor` = `v`.`id_vendedor`))) where (`v`.`cargo` = 'VENDEDOR SUPERVISOR') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'transportes_san_daniel'
--

--
-- Dumping routines for database 'transportes_san_daniel'
--
/*!50003 DROP FUNCTION IF EXISTS `funcion_impuesto_mensual_iva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `funcion_impuesto_mensual_iva`(mes INT, anio INT) RETURNS decimal(20,2)
    DETERMINISTIC
BEGIN
    DECLARE impuesto_mensual_iva DECIMAL(20, 2);
    
    SELECT SUM(impuesto) INTO impuesto_mensual_iva
    FROM facturas
    WHERE YEAR(fecha_factura) = anio AND MONTH(fecha_factura) = mes;

    RETURN impuesto_mensual_iva;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `funcion_ventas_mensuales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `funcion_ventas_mensuales`(mes INT, anio INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE numero_ventas_mensuales INT;
    
    SELECT COUNT(*) INTO numero_ventas_mensuales
    FROM facturas
    WHERE YEAR(fecha_factura) = anio AND MONTH(fecha_factura) = mes;

    RETURN numero_ventas_mensuales;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_estatus_entrega` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_estatus_entrega`()
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingreso_ventas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingreso_ventas`()
begin
	DECLARE error_state VARCHAR(5) DEFAULT '00000';
	declare exit handler for sqlexception, sqlwarning
    begin
		 GET DIAGNOSTICS CONDITION 1
            error_state = RETURNED_SQLSTATE;
        select concat("ERROR EN EJECUCION: ", error_state);
        rollback;
    end;
    
    start transaction;
    insert into clientes 
    values (null,497,"DESIRE","RODRIGUEZ","254785125-5",269479555,"DESI_RO@GMAIL.COM");
	insert into direcciones
    values (null,"ARTURO PRATT",310,"SANTIAGO","PUERTO VARAS",5550000);
    savepoint sp1;
	insert into dpto_ventas
    values (508,null,956327512);
    savepoint sp2;
	insert into facturas
    values (515,508,null,40,null,'2023-11-12',34464,181391);
    commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ordena_facturas_por_fecha_emision` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ordena_facturas_por_fecha_emision`()
BEGIN
    SELECT * FROM facturas
    ORDER BY fecha_factura;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-16 12:34:36
