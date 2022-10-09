CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `locationchange`
--

DROP TABLE IF EXISTS `locationchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locationchange` (
  `PK` int unsigned NOT NULL,
  `FK_Studio` int unsigned NOT NULL,
  `FK_OldLocation` int unsigned NOT NULL,
  `FK_NewLocation` int unsigned NOT NULL,
  `ChangeDate` date NOT NULL,
  PRIMARY KEY (`PK`),
  UNIQUE KEY `PK_UNIQUE` (`PK`),
  KEY `indxStudio_idx` (`FK_Studio`),
  KEY `indxOldLocation_idx` (`FK_OldLocation`),
  KEY `indxNewLocation_idx` (`FK_NewLocation`),
  CONSTRAINT `indxLocationChange_NewLocation` FOREIGN KEY (`FK_NewLocation`) REFERENCES `location` (`LocationID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `indxLocationChange_OldLocation` FOREIGN KEY (`FK_OldLocation`) REFERENCES `location` (`LocationID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `indxLocationChange_Studio` FOREIGN KEY (`FK_Studio`) REFERENCES `studio` (`StudioID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locationchange`
--

LOCK TABLES `locationchange` WRITE;
/*!40000 ALTER TABLE `locationchange` DISABLE KEYS */;
/*!40000 ALTER TABLE `locationchange` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-03  0:55:50
