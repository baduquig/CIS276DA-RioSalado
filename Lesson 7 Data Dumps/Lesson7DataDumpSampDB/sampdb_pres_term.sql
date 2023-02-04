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
-- Table structure for table `pres_term`
--

DROP TABLE IF EXISTS `pres_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pres_term` (
  `pres_id` int unsigned NOT NULL,
  `term_start_date` date NOT NULL,
  `term_end_date` date DEFAULT NULL,
  `number_of_elections_won` tinyint DEFAULT NULL,
  `reason_for_leaving_office` varchar(254) DEFAULT NULL,
  `term_id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`term_id`),
  KEY `PRES_TERM_FK_PRES_ID` (`pres_id`),
  CONSTRAINT `PRES_TERM_FK_PRES_ID` FOREIGN KEY (`pres_id`) REFERENCES `president` (`pres_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pres_term`
--

LOCK TABLES `pres_term` WRITE;
/*!40000 ALTER TABLE `pres_term` DISABLE KEYS */;
INSERT INTO `pres_term` VALUES (1,'1789-07-01','1797-03-04',2,'Did not seek re-election',1),(2,'1797-03-04','1801-03-04',1,'Lost reelection',2),(3,'1801-03-04','1809-03-04',2,'Did not seek reelection',3),(4,'1809-03-04','1817-03-04',2,'Did not seek reelection',4),(5,'1817-03-04','1825-03-04',2,'Did not seek reelection',5),(6,'1825-03-04','1829-03-04',1,'Lost reelection',6),(7,'1829-03-04','1837-03-04',2,'Did not seek reelection',7),(8,'1837-03-04','1841-03-04',2,'Did not seek reelection',8),(9,'1841-03-04','1841-04-04',1,'Died in office',9),(10,'1841-04-04','1845-03-04',0,'Did not seek reelection',10),(11,'1845-03-04','1849-03-04',1,'Did not seek reelection',11),(12,'1849-03-04','1850-07-09',1,'Died in office',12),(13,'1850-07-09','1853-03-04',0,'Did not seek reelection¹',13),(14,'1853-03-04','1857-03-04',1,'Did not seek reelection¹ ',14),(15,'1857-03-04','1861-03-04',1,'Did not seek reelection',15),(16,'1861-03-04','1865-04-15',1,'Assassinated',16),(17,'1865-04-15','1869-03-04',0,'Did not seek reelection',17),(18,'1869-03-04','1877-03-04',2,'Did not seek reelection',18),(19,'1877-03-04','1881-03-04',1,'Did not seek reelection',19),(20,'1881-03-04','1881-09-09',1,'Assassinated',20),(21,'1881-09-09','1885-03-04',0,'Did not seek reelection',21),(22,'1885-03-04','1889-03-04',1,'Lost reelection',22),(23,'1889-03-04','1893-03-04',1,'Lost reelection',23),(22,'1893-03-04','1897-03-04',1,'Did not seek reelection',24),(24,'1897-03-04','1901-09-14',2,'Assassinated',25),(25,'1901-09-14','1909-03-04',1,'Did not seek reelection',26),(26,'1909-03-04','1913-03-04',1,'Lost reelection',27),(27,'1913-03-04','1921-03-04',2,'Did not seek reelection',28),(28,'1921-03-04','1923-08-02',1,'Died in office',29),(29,'1923-08-02','1929-03-04',1,'Did not seek reelection',30),(30,'1929-03-04','1933-03-04',1,'Lost reelection',31),(31,'1933-03-04','1945-04-12',4,'Died in office',32),(32,'1945-04-12','1953-01-20',1,'Did not seek reelection',33),(33,'1953-01-20','1961-01-20',2,'Term ended',34),(34,'1961-01-20','1963-11-22',1,'Assassinated',35),(35,'1963-11-22','1969-01-20',1,'Did not seek reelection',36),(36,'1969-01-20','1974-08-09',2,'Resigned',37),(37,'1974-08-09','1977-01-20',0,'Lost election ',38),(38,'1977-01-20','1981-01-20',1,'Lost reelection',39),(39,'1981-01-20','1989-01-20',2,'Term ended',40),(40,'1989-01-20','1993-01-20',1,'Lost reelection',41),(41,'1993-01-20','2001-01-20',2,'Term ended ',42),(42,'2001-01-20','2009-01-20',2,'Term ended ',43),(43,'2009-01-20',NULL,2,NULL,44);
/*!40000 ALTER TABLE `pres_term` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-19 11:57:41
