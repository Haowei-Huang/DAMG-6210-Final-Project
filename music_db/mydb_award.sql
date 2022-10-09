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
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `award` (
  `AwardID` int unsigned NOT NULL AUTO_INCREMENT,
  `FK_CeremonyID` smallint unsigned NOT NULL,
  `FK_ArtistID` int unsigned NOT NULL,
  `AwardedYear` year NOT NULL,
  `Category` varchar(45) NOT NULL,
  `Result` varchar(20) NOT NULL,
  `FK_Album` int unsigned NOT NULL,
  PRIMARY KEY (`AwardID`),
  UNIQUE KEY `AwardID_UNIQUE` (`AwardID`),
  KEY `indxArtist_idx` (`FK_ArtistID`),
  KEY `indxCeremony_idx` (`FK_CeremonyID`),
  KEY `indxAlbum_idx` (`FK_Album`),
  CONSTRAINT `indxAwardAlbum` FOREIGN KEY (`FK_Album`) REFERENCES `album` (`AlbumID`),
  CONSTRAINT `indxAwardArtist` FOREIGN KEY (`FK_ArtistID`) REFERENCES `artist` (`ArtistID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `indxAwardCeremony` FOREIGN KEY (`FK_CeremonyID`) REFERENCES `ceremony` (`CeremonyID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award`
--

LOCK TABLES `award` WRITE;
/*!40000 ALTER TABLE `award` DISABLE KEYS */;
INSERT INTO `award` VALUES (1,1,1,2008,'Album of the Year','Nominated',1),(2,2,1,2012,'Top Pop Album','Nominated',1),(3,1,1,2011,'Album of the Year','Nominated',2),(4,3,1,2011,'Favorite Pop/Rock Album','Won',2),(5,2,1,2012,'Top Billboard 200 Album','Won',2),(6,2,1,2012,'Top Pop Album','Won',2),(7,4,1,2012,'Album of the Year','Won',2),(8,4,1,2012,'Best Pop Vocal Album','Won',2),(9,3,1,2016,'Favorite Pop/Rock Album','Nominated',3),(10,2,1,2016,'Top Billboard 200 Album','Won',3),(11,4,1,2017,'Album of the Year','Won',3),(12,4,1,2017,'Best Pop Vocal Album','Won',3);
/*!40000 ALTER TABLE `award` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-03  0:55:49
