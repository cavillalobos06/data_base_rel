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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-23 15:40:03
