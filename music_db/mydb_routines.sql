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
-- Temporary view structure for view `artist_info`
--

DROP TABLE IF EXISTS `artist_info`;
/*!50001 DROP VIEW IF EXISTS `artist_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `artist_info` AS SELECT 
 1 AS `Artist Name`,
 1 AS `Age`,
 1 AS `Country`,
 1 AS `Label`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `award_info`
--

DROP TABLE IF EXISTS `award_info`;
/*!50001 DROP VIEW IF EXISTS `award_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `award_info` AS SELECT 
 1 AS `Artist Name`,
 1 AS `Ceremony Name`,
 1 AS `Album`,
 1 AS `Awarded Year`,
 1 AS `Category`,
 1 AS `result`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `album_info`
--

DROP TABLE IF EXISTS `album_info`;
/*!50001 DROP VIEW IF EXISTS `album_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `album_info` AS SELECT 
 1 AS `ArtistName`,
 1 AS `AlbumTitle`,
 1 AS `ReleaseDate`,
 1 AS `GenreName`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `artist_info`
--

/*!50001 DROP VIEW IF EXISTS `artist_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `artist_info` AS select `a`.`ArtistName` AS `Artist Name`,timestampdiff(YEAR,`a`.`Birthday`,curdate()) AS `Age`,`c`.`CountryName` AS `Country`,`l`.`LabelName` AS `Label` from ((`artist` `a` join `country` `c` on((`c`.`CountryID` = `a`.`FK_Country`))) join `label` `l` on((`l`.`LabelID` = `a`.`FK_Label`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `award_info`
--

/*!50001 DROP VIEW IF EXISTS `award_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `award_info` AS select `a`.`ArtistName` AS `Artist Name`,`c`.`CeremonyName` AS `Ceremony Name`,`al`.`AlbumTitle` AS `Album`,`aw`.`AwardedYear` AS `Awarded Year`,`aw`.`Category` AS `Category`,`aw`.`Result` AS `result` from (((`award` `aw` join `artist` `a` on((`a`.`ArtistID` = `aw`.`FK_ArtistID`))) join `ceremony` `c` on((`c`.`CeremonyID` = `aw`.`FK_CeremonyID`))) join `album` `al` on((`al`.`AlbumID` = `aw`.`FK_Album`))) order by `al`.`AlbumTitle` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `album_info`
--

/*!50001 DROP VIEW IF EXISTS `album_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `album_info` AS select `a`.`ArtistName` AS `ArtistName`,`al`.`AlbumTitle` AS `AlbumTitle`,`al`.`ReleaseDate` AS `ReleaseDate`,`g`.`GenreName` AS `GenreName` from ((`album` `al` join `genre` `g` on((`al`.`FK_Genre` = `g`.`GenreID`))) join `artist` `a` on((`al`.`FK_Artist` = `a`.`ArtistID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-03  0:55:50
