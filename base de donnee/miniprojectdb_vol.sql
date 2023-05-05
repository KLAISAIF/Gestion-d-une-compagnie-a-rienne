-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: miniprojectdb
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `vol`
--

DROP TABLE IF EXISTS `vol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vol` (
  `idvol` int NOT NULL,
  `heurecollage` date NOT NULL,
  `heurearrivee` date NOT NULL,
  `idvoyage` int NOT NULL,
  `idavion` int NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`idvol`),
  KEY `fk_parent_id3` (`idvoyage`),
  KEY `fkavion_name` (`idavion`),
  CONSTRAINT `fk_parent_id3` FOREIGN KEY (`idvoyage`) REFERENCES `voyage` (`idvoyage`),
  CONSTRAINT `fkavion_name` FOREIGN KEY (`idavion`) REFERENCES `avion` (`idavion`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vol`
--

LOCK TABLES `vol` WRITE;
/*!40000 ALTER TABLE `vol` DISABLE KEYS */;
INSERT INTO `vol` VALUES (4,'2023-03-28','2023-03-29',3,4,150),(5,'2023-04-20','2023-04-20',5,5,156),(6,'2023-04-21','2023-04-21',6,6,170),(7,'2023-04-20','2023-04-21',7,7,160),(8,'2023-04-20','2023-04-21',8,2,202);
/*!40000 ALTER TABLE `vol` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06  0:30:40
