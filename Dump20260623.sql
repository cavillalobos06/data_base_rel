-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ventas
-- ------------------------------------------------------
-- Server version	8.0.46-0ubuntu0.24.04.2

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Monitores'),(2,'Computadores'),(3,'Almacenamiento'),(4,'Monitores'),(5,'Almacenamiento'),(7,'Monitores'),(8,'Monitores'),(9,'Almacenamiento'),(11,'Almacenamiento'),(12,'Accesorios'),(13,'Monitores'),(14,'Almacenamiento'),(15,'Accesorios'),(16,'Computadores'),(17,'Computadores'),(18,'Accesorios'),(19,'Computadores'),(20,'Accesorios'),(21,'Almacenamiento'),(22,'Monitores'),(23,'Accesorios'),(24,'Computadores'),(25,'Computadores'),(26,'Almacenamiento'),(27,'Accesorios'),(28,'Computadores'),(29,'Computadores'),(30,'Impresión'),(31,'Monitores'),(32,'Accesorios'),(33,'Almacenamiento'),(34,'Accesorios'),(35,'Monitores'),(36,'Computadores'),(37,'Almacenamiento'),(38,'Accesorios'),(39,'Computadores'),(40,'Almacenamiento'),(41,'Almacenamiento'),(42,'Monitores'),(43,'Almacenamiento'),(44,'Computadores'),(45,'Computadores'),(46,'Impresión'),(47,'Impresión'),(48,'Monitores'),(49,'Computadores'),(50,'Accesorios'),(51,'Computadores'),(52,'Computadores'),(53,'Computadores'),(54,'Monitores'),(55,'Impresión'),(56,'Almacenamiento'),(57,'Monitores'),(58,'Monitores'),(59,'Almacenamiento'),(60,'Accesorios'),(61,'Monitores'),(62,'Almacenamiento'),(63,'Computadores'),(64,'Accesorios'),(65,'Accesorios'),(66,'Almacenamiento'),(67,'Computadores'),(68,'Accesorios'),(69,'Almacenamiento'),(70,'Accesorios'),(71,'Monitores'),(72,'Almacenamiento'),(73,'Computadores'),(74,'Monitores'),(75,'Monitores'),(76,'Impresión'),(77,'Accesorios'),(78,'Monitores'),(79,'Impresión'),(80,'Monitores'),(81,'Accesorios'),(82,'Impresión'),(83,'Almacenamiento'),(84,'Accesorios'),(85,'Impresión'),(86,'Computadores'),(87,'Computadores'),(88,'Almacenamiento'),(89,'Monitores'),(90,'Almacenamiento'),(91,'Accesorios'),(92,'Accesorios'),(93,'Monitores'),(94,'Accesorios'),(95,'Computadores'),(96,'Impresión'),(97,'Computadores'),(98,'Almacenamiento'),(99,'Computadores'),(100,'Accesorios'),(101,'Impresión'),(102,'Almacenamiento'),(103,'Monitores'),(104,'Almacenamiento'),(105,'Computadores'),(106,'Monitores'),(107,'Computadores'),(108,'Computadores'),(109,'Monitores'),(110,'Accesorios'),(111,'Almacenamiento'),(112,'Accesorios'),(113,'Almacenamiento'),(114,'Accesorios'),(115,'Almacenamiento'),(116,'Almacenamiento'),(117,'Computadores'),(118,'Accesorios'),(119,'Monitores'),(120,'Computadores'),(121,'Almacenamiento'),(122,'Accesorios'),(123,'Impresión');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(50) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `cedula` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cedula` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_venta` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_venta` (`id_venta`),
  CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejercicio_normalizacion_ventas_csv`
--

DROP TABLE IF EXISTS `ejercicio_normalizacion_ventas_csv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejercicio_normalizacion_ventas_csv` (
  `id_venta` int DEFAULT NULL,
  `fecha` text,
  `cliente` text,
  `cedula_cliente` int DEFAULT NULL,
  `telefono_cliente` bigint DEFAULT NULL,
  `producto` text,
  `categoria` text,
  `precio` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `vendedor` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejercicio_normalizacion_ventas_csv`
--

LOCK TABLES `ejercicio_normalizacion_ventas_csv` WRITE;
/*!40000 ALTER TABLE `ejercicio_normalizacion_ventas_csv` DISABLE KEYS */;
INSERT INTO `ejercicio_normalizacion_ventas_csv` VALUES (1001,'2026-04-13','Luis Torres',1067890123,3005556677,'Monitor Samsung 24','Monitores',850000,4,'Carlos Gómez'),(1001,'2026-04-13','Luis Torres',1067890123,3005556677,'Laptop Asus','Computadores',3200000,4,'Carlos Gómez'),(1002,'2026-01-19','Camilo Díaz',1101234567,3011112233,'Disco SSD 1TB','Almacenamiento',350000,5,'Mónica Ruiz'),(1002,'2026-01-19','Camilo Díaz',1101234567,3011112233,'Monitor LG 27','Monitores',1200000,5,'Mónica Ruiz'),(1002,'2026-01-19','Camilo Díaz',1101234567,3011112233,'Memoria USB 64GB','Almacenamiento',45000,4,'Mónica Ruiz'),(1002,'2026-01-19','Camilo Díaz',1101234567,3011112233,'Mouse Logitech','Accesorios',80000,4,'Mónica Ruiz'),(1003,'2026-01-05','Carlos Rodríguez',1045678901,3003334455,'Monitor LG 27','Monitores',1200000,1,'Pedro Sánchez'),(1003,'2026-01-05','Carlos Rodríguez',1045678901,3003334455,'Monitor Samsung 24','Monitores',850000,3,'Pedro Sánchez'),(1003,'2026-01-05','Carlos Rodríguez',1045678901,3003334455,'Disco SSD 1TB','Almacenamiento',350000,3,'Pedro Sánchez'),(1003,'2026-01-05','Carlos Rodríguez',1045678901,3003334455,'Impresora Epson','Impresión',650000,5,'Pedro Sánchez'),(1004,'2026-03-26','Jorge Ramírez',1123456789,3013334455,'Memoria USB 64GB','Almacenamiento',45000,2,'Mónica Ruiz'),(1004,'2026-03-26','Jorge Ramírez',1123456789,3013334455,'Teclado Redragon','Accesorios',180000,3,'Mónica Ruiz'),(1005,'2026-03-20','Miguel Cárdenas',1167890123,3017778899,'Monitor Samsung 24','Monitores',850000,3,'Javier León'),(1005,'2026-03-20','Miguel Cárdenas',1167890123,3017778899,'SSD 512GB','Almacenamiento',220000,3,'Javier León'),(1006,'2026-04-09','Luis Torres',1067890123,3005556677,'Teclado Redragon','Accesorios',180000,4,'Diana Torres'),(1006,'2026-04-09','Luis Torres',1067890123,3005556677,'Laptop HP','Computadores',2800000,4,'Diana Torres'),(1006,'2026-04-09','Luis Torres',1067890123,3005556677,'Laptop Asus','Computadores',3200000,2,'Diana Torres'),(1006,'2026-04-09','Luis Torres',1067890123,3005556677,'Mouse Logitech','Accesorios',80000,1,'Diana Torres'),(1007,'2026-04-24','Miguel Cárdenas',1167890123,3017778899,'Laptop HP','Computadores',2800000,2,'Javier León'),(1007,'2026-04-24','Miguel Cárdenas',1167890123,3017778899,'Mouse Logitech','Accesorios',80000,2,'Javier León'),(1007,'2026-04-24','Miguel Cárdenas',1167890123,3017778899,'Disco SSD 1TB','Almacenamiento',350000,3,'Javier León'),(1008,'2026-04-17','Miguel Cárdenas',1167890123,3017778899,'Monitor LG 27','Monitores',1200000,5,'Javier León'),(1008,'2026-04-17','Miguel Cárdenas',1167890123,3017778899,'Teclado Redragon','Accesorios',180000,2,'Javier León'),(1008,'2026-04-17','Miguel Cárdenas',1167890123,3017778899,'Laptop Lenovo','Computadores',2500000,5,'Javier León'),(1009,'2026-03-17','Juliana Acosta',1178901234,3018889900,'Laptop Lenovo','Computadores',2500000,4,'Diana Torres'),(1009,'2026-03-17','Juliana Acosta',1178901234,3018889900,'Memoria USB 64GB','Almacenamiento',45000,3,'Diana Torres'),(1009,'2026-03-17','Juliana Acosta',1178901234,3018889900,'Teclado Mecánico','Accesorios',250000,1,'Diana Torres'),(1009,'2026-03-17','Juliana Acosta',1178901234,3018889900,'Laptop HP','Computadores',2800000,4,'Diana Torres'),(1010,'2026-04-17','Juan Pérez',1023456789,3001112233,'Laptop Asus','Computadores',3200000,5,'Diana Torres'),(1010,'2026-04-17','Juan Pérez',1023456789,3001112233,'Impresora Epson','Impresión',650000,5,'Diana Torres'),(1011,'2026-03-29','Miguel Cárdenas',1167890123,3017778899,'Monitor LG 27','Monitores',1200000,4,'Carlos Gómez'),(1011,'2026-03-29','Miguel Cárdenas',1167890123,3017778899,'Teclado Mecánico','Accesorios',250000,1,'Carlos Gómez'),(1011,'2026-03-29','Miguel Cárdenas',1167890123,3017778899,'SSD 512GB','Almacenamiento',220000,2,'Carlos Gómez'),(1011,'2026-03-29','Miguel Cárdenas',1167890123,3017778899,'Teclado Redragon','Accesorios',180000,3,'Carlos Gómez'),(1012,'2026-01-03','Jorge Ramírez',1123456789,3013334455,'Monitor LG 27','Monitores',1200000,4,'Pedro Sánchez'),(1012,'2026-01-03','Jorge Ramírez',1123456789,3013334455,'Laptop Asus','Computadores',3200000,1,'Pedro Sánchez'),(1012,'2026-01-03','Jorge Ramírez',1123456789,3013334455,'Disco SSD 1TB','Almacenamiento',350000,2,'Pedro Sánchez'),(1013,'2026-01-09','Natalia Silva',1156789012,3016667788,'Teclado Mecánico','Accesorios',250000,1,'Diana Torres'),(1013,'2026-01-09','Natalia Silva',1156789012,3016667788,'Laptop HP','Computadores',2800000,3,'Diana Torres'),(1013,'2026-01-09','Natalia Silva',1156789012,3016667788,'SSD 512GB','Almacenamiento',220000,4,'Diana Torres'),(1014,'2026-03-30','Juliana Acosta',1178901234,3018889900,'Disco SSD 1TB','Almacenamiento',350000,4,'Javier León'),(1014,'2026-03-30','Juliana Acosta',1178901234,3018889900,'Monitor Samsung 24','Monitores',850000,1,'Javier León'),(1014,'2026-03-30','Juliana Acosta',1178901234,3018889900,'Memoria USB 64GB','Almacenamiento',45000,1,'Javier León'),(1015,'2026-01-29','Paula Moreno',1134567890,3014445566,'Laptop Asus','Computadores',3200000,2,'Javier León'),(1015,'2026-01-29','Paula Moreno',1134567890,3014445566,'Laptop Lenovo','Computadores',2500000,4,'Javier León'),(1015,'2026-01-29','Paula Moreno',1134567890,3014445566,'Impresora Epson','Impresión',650000,3,'Javier León'),(1016,'2026-01-05','Valentina Rojas',1090123456,3008889900,'Impresora Epson','Impresión',650000,2,'Mónica Ruiz'),(1016,'2026-01-05','Valentina Rojas',1090123456,3008889900,'Monitor LG 27','Monitores',1200000,2,'Mónica Ruiz'),(1016,'2026-01-05','Valentina Rojas',1090123456,3008889900,'Laptop Lenovo','Computadores',2500000,1,'Mónica Ruiz'),(1017,'2026-01-14','Sara Hernández',1212345678,3024445566,'Teclado Mecánico','Accesorios',250000,1,'Pedro Sánchez'),(1017,'2026-01-14','Sara Hernández',1212345678,3024445566,'Laptop Lenovo','Computadores',2500000,3,'Pedro Sánchez'),(1017,'2026-01-14','Sara Hernández',1212345678,3024445566,'Laptop HP','Computadores',2800000,5,'Pedro Sánchez'),(1017,'2026-01-14','Sara Hernández',1212345678,3024445566,'Laptop Asus','Computadores',3200000,3,'Pedro Sánchez'),(1018,'2026-01-01','Jorge Ramírez',1123456789,3013334455,'Monitor Samsung 24','Monitores',850000,2,'Mónica Ruiz'),(1018,'2026-01-01','Jorge Ramírez',1123456789,3013334455,'Impresora Epson','Impresión',650000,5,'Mónica Ruiz'),(1019,'2026-03-08','Laura Mendoza',1112345678,3012223344,'SSD 512GB','Almacenamiento',220000,5,'Diana Torres'),(1019,'2026-03-08','Laura Mendoza',1112345678,3012223344,'Monitor Samsung 24','Monitores',850000,3,'Diana Torres'),(1019,'2026-03-08','Laura Mendoza',1112345678,3012223344,'Monitor LG 27','Monitores',1200000,3,'Diana Torres'),(1020,'2026-02-19','Andrés Castro',1089012345,3007778899,'Disco SSD 1TB','Almacenamiento',350000,2,'Pedro Sánchez'),(1020,'2026-02-19','Andrés Castro',1089012345,3007778899,'Teclado Redragon','Accesorios',180000,1,'Pedro Sánchez'),(1021,'2026-01-18','María Gómez',1034567890,3002223344,'Monitor Samsung 24','Monitores',850000,4,'Diana Torres'),(1021,'2026-01-18','María Gómez',1034567890,3002223344,'Disco SSD 1TB','Almacenamiento',350000,2,'Diana Torres'),(1021,'2026-01-18','María Gómez',1034567890,3002223344,'Laptop Asus','Computadores',3200000,4,'Diana Torres'),(1021,'2026-01-18','María Gómez',1034567890,3002223344,'Mouse Logitech','Accesorios',80000,4,'Diana Torres'),(1022,'2026-01-11','Juliana Acosta',1178901234,3018889900,'Teclado Mecánico','Accesorios',250000,3,'Pedro Sánchez'),(1022,'2026-01-11','Juliana Acosta',1178901234,3018889900,'Memoria USB 64GB','Almacenamiento',45000,2,'Pedro Sánchez'),(1022,'2026-01-11','Juliana Acosta',1178901234,3018889900,'Laptop Asus','Computadores',3200000,3,'Pedro Sánchez'),(1023,'2026-02-14','Carlos Rodríguez',1045678901,3003334455,'Teclado Mecánico','Accesorios',250000,1,'Javier León'),(1023,'2026-02-14','Carlos Rodríguez',1045678901,3003334455,'SSD 512GB','Almacenamiento',220000,2,'Javier León'),(1023,'2026-02-14','Carlos Rodríguez',1045678901,3003334455,'Mouse Logitech','Accesorios',80000,1,'Javier León'),(1024,'2026-02-22','María Gómez',1034567890,3002223344,'Monitor LG 27','Monitores',1200000,2,'Mónica Ruiz'),(1024,'2026-02-22','María Gómez',1034567890,3002223344,'Memoria USB 64GB','Almacenamiento',45000,4,'Mónica Ruiz'),(1024,'2026-02-22','María Gómez',1034567890,3002223344,'Laptop Lenovo','Computadores',2500000,3,'Mónica Ruiz'),(1025,'2026-01-05','Daniela Ruiz',1190123456,3022223344,'Monitor Samsung 24','Monitores',850000,2,'Pedro Sánchez'),(1025,'2026-01-05','Daniela Ruiz',1190123456,3022223344,'Monitor LG 27','Monitores',1200000,5,'Pedro Sánchez'),(1026,'2026-01-19','Camilo Díaz',1101234567,3011112233,'Impresora Epson','Impresión',650000,2,'Mónica Ruiz'),(1026,'2026-01-19','Camilo Díaz',1101234567,3011112233,'Teclado Mecánico','Accesorios',250000,1,'Mónica Ruiz'),(1027,'2026-01-14','Jorge Ramírez',1123456789,3013334455,'Monitor LG 27','Monitores',1200000,5,'Pedro Sánchez'),(1027,'2026-01-14','Jorge Ramírez',1123456789,3013334455,'Impresora Epson','Impresión',650000,5,'Pedro Sánchez'),(1028,'2026-03-17','Kevin López',1201234567,3023334455,'Monitor LG 27','Monitores',1200000,5,'Pedro Sánchez'),(1028,'2026-03-17','Kevin López',1201234567,3023334455,'Teclado Mecánico','Accesorios',250000,1,'Pedro Sánchez'),(1028,'2026-03-17','Kevin López',1201234567,3023334455,'Impresora Epson','Impresión',650000,4,'Pedro Sánchez'),(1029,'2026-04-03','María Gómez',1034567890,3002223344,'Memoria USB 64GB','Almacenamiento',45000,1,'Mónica Ruiz'),(1029,'2026-04-03','María Gómez',1034567890,3002223344,'Teclado Redragon','Accesorios',180000,1,'Mónica Ruiz'),(1029,'2026-04-03','María Gómez',1034567890,3002223344,'Impresora Epson','Impresión',650000,4,'Mónica Ruiz'),(1029,'2026-04-03','María Gómez',1034567890,3002223344,'Laptop HP','Computadores',2800000,2,'Mónica Ruiz'),(1030,'2026-04-12','Laura Mendoza',1112345678,3012223344,'Laptop Asus','Computadores',3200000,1,'Carlos Gómez'),(1030,'2026-04-12','Laura Mendoza',1112345678,3012223344,'Disco SSD 1TB','Almacenamiento',350000,4,'Carlos Gómez'),(1030,'2026-04-12','Laura Mendoza',1112345678,3012223344,'Monitor Samsung 24','Monitores',850000,4,'Carlos Gómez'),(1031,'2026-04-21','Andrés Castro',1089012345,3007778899,'SSD 512GB','Almacenamiento',220000,4,'Diana Torres'),(1031,'2026-04-21','Andrés Castro',1089012345,3007778899,'Teclado Mecánico','Accesorios',250000,5,'Diana Torres'),(1031,'2026-04-21','Andrés Castro',1089012345,3007778899,'Teclado Redragon','Accesorios',180000,5,'Diana Torres'),(1032,'2026-04-01','Natalia Silva',1156789012,3016667788,'Monitor LG 27','Monitores',1200000,2,'Diana Torres'),(1032,'2026-04-01','Natalia Silva',1156789012,3016667788,'Teclado Mecánico','Accesorios',250000,2,'Diana Torres'),(1032,'2026-04-01','Natalia Silva',1156789012,3016667788,'Laptop Asus','Computadores',3200000,5,'Diana Torres'),(1033,'2026-03-11','Miguel Cárdenas',1167890123,3017778899,'Impresora Epson','Impresión',650000,2,'Pedro Sánchez'),(1033,'2026-03-11','Miguel Cárdenas',1167890123,3017778899,'Laptop HP','Computadores',2800000,5,'Pedro Sánchez'),(1034,'2026-02-11','María Gómez',1034567890,3002223344,'Memoria USB 64GB','Almacenamiento',45000,1,'Javier León'),(1034,'2026-02-11','María Gómez',1034567890,3002223344,'Laptop Lenovo','Computadores',2500000,5,'Javier León'),(1034,'2026-02-11','María Gómez',1034567890,3002223344,'Mouse Logitech','Accesorios',80000,4,'Javier León'),(1034,'2026-02-11','María Gómez',1034567890,3002223344,'Impresora Epson','Impresión',650000,2,'Javier León'),(1035,'2026-01-02','Kevin López',1201234567,3023334455,'Disco SSD 1TB','Almacenamiento',350000,5,'Carlos Gómez'),(1035,'2026-01-02','Kevin López',1201234567,3023334455,'Monitor LG 27','Monitores',1200000,5,'Carlos Gómez'),(1035,'2026-01-02','Kevin López',1201234567,3023334455,'SSD 512GB','Almacenamiento',220000,1,'Carlos Gómez'),(1035,'2026-01-02','Kevin López',1201234567,3023334455,'Laptop Asus','Computadores',3200000,1,'Carlos Gómez'),(1036,'2026-01-24','Ana Martínez',1056789012,3004445566,'Monitor Samsung 24','Monitores',850000,3,'Javier León'),(1036,'2026-01-24','Ana Martínez',1056789012,3004445566,'Laptop HP','Computadores',2800000,2,'Javier León'),(1037,'2026-03-25','Felipe Gómez',1189012345,3021112233,'Laptop Asus','Computadores',3200000,4,'Mónica Ruiz'),(1037,'2026-03-25','Felipe Gómez',1189012345,3021112233,'Monitor LG 27','Monitores',1200000,5,'Mónica Ruiz'),(1038,'2026-03-24','Felipe Gómez',1189012345,3021112233,'Teclado Redragon','Accesorios',180000,5,'Pedro Sánchez'),(1038,'2026-03-24','Felipe Gómez',1189012345,3021112233,'Disco SSD 1TB','Almacenamiento',350000,2,'Pedro Sánchez'),(1038,'2026-03-24','Felipe Gómez',1189012345,3021112233,'Mouse Logitech','Accesorios',80000,4,'Pedro Sánchez'),(1039,'2026-01-30','Juliana Acosta',1178901234,3018889900,'SSD 512GB','Almacenamiento',220000,3,'Javier León'),(1039,'2026-01-30','Juliana Acosta',1178901234,3018889900,'Teclado Redragon','Accesorios',180000,1,'Javier León'),(1040,'2026-05-01','Valentina Rojas',1090123456,3008889900,'Memoria USB 64GB','Almacenamiento',45000,3,'Carlos Gómez'),(1040,'2026-05-01','Valentina Rojas',1090123456,3008889900,'Disco SSD 1TB','Almacenamiento',350000,5,'Carlos Gómez'),(1040,'2026-05-01','Valentina Rojas',1090123456,3008889900,'Laptop HP','Computadores',2800000,1,'Carlos Gómez'),(1040,'2026-05-01','Valentina Rojas',1090123456,3008889900,'Teclado Mecánico','Accesorios',250000,4,'Carlos Gómez');
/*!40000 ALTER TABLE `ejercicio_normalizacion_ventas_csv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(50) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Monitor Samsung 24',850000,NULL),(2,'Laptop Asus',3200000,NULL),(3,'Disco SSD 1TB',350000,NULL),(4,'Monitor LG 27',1200000,NULL),(5,'Memoria USB 64GB',45000,NULL),(6,'Mouse Logitech',80000,NULL),(7,'Impresora Epson',650000,NULL),(8,'Teclado Redragon',180000,NULL),(9,'SSD 512GB',220000,NULL),(10,'Laptop HP',2800000,NULL),(11,'Teclado Mecánico',250000,NULL);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `id_producto` int DEFAULT NULL,
  `id_vendedor` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_producto` (`id_producto`),
  KEY `id_vendedor` (`id_vendedor`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-23 15:40:14
