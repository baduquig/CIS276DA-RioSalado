-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: mysampdb
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
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score` (
  `student_id` int unsigned NOT NULL,
  `event_id` int unsigned NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`event_id`,`student_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `score_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `grade_event` (`event_id`),
  CONSTRAINT `score_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,1,20),(3,1,20),(4,1,18),(5,1,13),(6,1,18),(7,1,14),(8,1,14),(9,1,11),(10,1,19),(11,1,18),(12,1,19),(14,1,11),(15,1,20),(16,1,18),(17,1,9),(18,1,20),(19,1,9),(20,1,9),(21,1,13),(22,1,13),(23,1,16),(24,1,11),(25,1,19),(26,1,10),(27,1,15),(28,1,15),(29,1,19),(30,1,17),(31,1,11),(1,2,17),(2,2,8),(3,2,13),(4,2,13),(5,2,17),(6,2,13),(7,2,17),(8,2,8),(9,2,19),(10,2,18),(11,2,15),(12,2,19),(13,2,18),(14,2,18),(15,2,16),(16,2,9),(17,2,13),(18,2,9),(19,2,11),(21,2,12),(22,2,10),(23,2,17),(24,2,19),(25,2,10),(26,2,18),(27,2,8),(28,2,13),(29,2,16),(30,2,12),(31,2,19),(1,3,88),(2,3,84),(3,3,69),(4,3,71),(5,3,97),(6,3,83),(7,3,88),(8,3,75),(9,3,83),(10,3,72),(11,3,74),(12,3,77),(13,3,67),(14,3,68),(15,3,75),(16,3,60),(17,3,79),(18,3,96),(19,3,79),(20,3,76),(21,3,91),(22,3,81),(23,3,81),(24,3,62),(25,3,79),(26,3,86),(27,3,90),(28,3,68),(29,3,66),(30,3,79),(31,3,81),(2,4,7),(3,4,17),(4,4,16),(5,4,20),(6,4,9),(7,4,19),(8,4,12),(9,4,17),(10,4,12),(11,4,16),(12,4,13),(13,4,8),(14,4,11),(15,4,9),(16,4,20),(18,4,11),(19,4,15),(20,4,17),(21,4,13),(22,4,20),(23,4,13),(24,4,12),(25,4,10),(26,4,15),(28,4,17),(30,4,11),(31,4,19),(1,5,15),(2,5,12),(3,5,11),(5,5,13),(6,5,18),(7,5,14),(8,5,13),(9,5,18),(10,5,14),(11,5,18),(12,5,8),(13,5,8),(14,5,16),(15,5,13),(16,5,15),(17,5,11),(18,5,18),(19,5,18),(20,5,14),(21,5,17),(22,5,17),(23,5,15),(25,5,14),(26,5,8),(28,5,20),(29,5,16),(31,5,9),(1,6,100),(2,6,91),(3,6,94),(4,6,74),(5,6,97),(6,6,89),(7,6,76),(8,6,65),(9,6,73),(10,6,63),(11,6,98),(12,6,75),(14,6,77),(15,6,62),(16,6,98),(17,6,94),(18,6,94),(19,6,74),(20,6,62),(21,6,73),(22,6,95),(24,6,68),(25,6,85),(26,6,91),(27,6,70),(28,6,77),(29,6,66),(30,6,68),(31,6,76);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-19 11:57:42
