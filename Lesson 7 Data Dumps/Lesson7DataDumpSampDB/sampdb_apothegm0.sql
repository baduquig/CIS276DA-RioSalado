CREATE DATABASE  IF NOT EXISTS `sampdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sampdb`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: sampdb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `apothegm`
--

DROP TABLE IF EXISTS `apothegm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apothegm` (
  `attribution` varchar(40) DEFAULT NULL,
  `phrase` text,
  FULLTEXT KEY `phrase` (`phrase`),
  FULLTEXT KEY `attribution` (`attribution`),
  FULLTEXT KEY `phrase_2` (`phrase`,`attribution`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apothegm`
--

LOCK TABLES `apothegm` WRITE;
/*!40000 ALTER TABLE `apothegm` DISABLE KEYS */;
INSERT INTO `apothegm` VALUES ('Aeschylus','Time as he grows old teaches many lessons'),('Alexander Graham Bell','Mr. Watson, come here. I want you!'),('Benjamin Franklin','It is hard for an empty bag to stand upright'),('Benjamin Franklin','Little strokes fell great oaks'),('Benjamin Franklin','Remember that time is money'),('Miguel de Cervantes','Bell, book, and candle'),('Proverbs 15:1','A soft answer turneth away wrath'),('Theodore Roosevelt','Speak softly and carry a big stick'),('William Shakespeare','But, soft! what light through yonder window breaks?'),('Robert Burton','I light my candle from their torches.');
/*!40000 ALTER TABLE `apothegm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-19 12:23:30
