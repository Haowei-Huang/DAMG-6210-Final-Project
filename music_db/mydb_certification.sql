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
-- Table structure for table `certification`
--

DROP TABLE IF EXISTS `certification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certification` (
  `CertificationID` int unsigned NOT NULL AUTO_INCREMENT,
  `Certification` varchar(45) NOT NULL,
  `CertifiedSales` int unsigned NOT NULL,
  `FK_Country` smallint unsigned NOT NULL,
  `FK_Album` int unsigned NOT NULL,
  PRIMARY KEY (`CertificationID`),
  UNIQUE KEY `CertificationID_UNIQUE` (`CertificationID`),
  KEY `indxCountry_idx` (`FK_Country`),
  KEY `indxAlbum_idx` (`FK_Album`),
  CONSTRAINT `indxCERTIFICATION_Album` FOREIGN KEY (`FK_Album`) REFERENCES `album` (`AlbumID`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `indxCERTIFICATION_Country` FOREIGN KEY (`FK_Country`) REFERENCES `country` (`CountryID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certification`
--

LOCK TABLES `certification` WRITE;
/*!40000 ALTER TABLE `certification` DISABLE KEYS */;
INSERT INTO `certification` VALUES (1,'2× Platinum',214000,4,1),(2,'4× Platinum',400000,3,1),(3,'3× Platinum	',3000000,2,1),(4,'8× Platinum',2450000,1,1),(5,'17× Platinum',5358000,1,2),(6,'14× Platinum',14000000,2,2),(7,'2× Diamond',1600000,3,2),(8,'17× Platinum',1190000,4,2),(9,'10× Platinum',700000,4,3),(10,'Diamond',1093000,3,3),(11,'12× Platinum',3803000,1,3),(12,'11× Platinum',11000000,2,3);
/*!40000 ALTER TABLE `certification` ENABLE KEYS */;
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
