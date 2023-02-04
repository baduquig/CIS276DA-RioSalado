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
-- Table structure for table `president`
--

DROP TABLE IF EXISTS `president`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `president` (
  `last_name` varchar(15) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `suffix` varchar(5) DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(2) NOT NULL,
  `birth` date NOT NULL,
  `death` date DEFAULT NULL,
  `pres_id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pres_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `president`
--

LOCK TABLES `president` WRITE;
/*!40000 ALTER TABLE `president` DISABLE KEYS */;
INSERT INTO `president` VALUES ('Washington','George',NULL,'Wakefield','VA','1732-02-22','1799-12-14',1),('Adams','John',NULL,'Braintree','MA','1735-10-30','1826-07-04',2),('Jefferson','Thomas',NULL,'Albemarle County','VA','1743-04-13','1826-07-04',3),('Madison','James',NULL,'Port Conway','VA','1751-03-16','1836-06-28',4),('Monroe','James',NULL,'Westmoreland County','VA','1758-04-28','1831-07-04',5),('Adams','John Quincy',NULL,'Braintree','MA','1767-07-11','1848-02-23',6),('Jackson','Andrew',NULL,'Waxhaw settlement','SC','1767-03-15','1845-06-08',7),('Van Buren','Martin',NULL,'Kinderhook','NY','1782-12-05','1862-07-24',8),('Harrison','William H.',NULL,'Berkeley','VA','1773-02-09','1841-04-04',9),('Tyler','John',NULL,'Greenway','VA','1790-03-29','1862-01-18',10),('Polk','James K.',NULL,'Pineville','NC','1795-11-02','1849-06-15',11),('Taylor','Zachary',NULL,'Orange County','VA','1784-11-24','1850-07-09',12),('Fillmore','Millard',NULL,'Locke','NY','1800-01-07','1874-03-08',13),('Pierce','Franklin',NULL,'Hillsboro','NH','1804-11-23','1869-10-08',14),('Buchanan','James',NULL,'Mercersburg','PA','1791-04-23','1868-06-01',15),('Lincoln','Abraham',NULL,'Hodgenville','KY','1809-02-12','1865-04-15',16),('Johnson','Andrew',NULL,'Raleigh','NC','1808-12-29','1875-07-31',17),('Grant','Ulysses S.',NULL,'Point Pleasant','OH','1822-04-27','1885-07-23',18),('Hayes','Rutherford B.',NULL,'Delaware','OH','1822-10-04','1893-01-17',19),('Garfield','James A.',NULL,'Orange','OH','1831-11-19','1881-09-19',20),('Arthur','Chester A.',NULL,'Fairfield','VT','1829-10-05','1886-11-18',21),('Cleveland','Grover',NULL,'Caldwell','NJ','1837-03-18','1908-06-24',22),('Harrison','Benjamin',NULL,'North Bend','OH','1833-08-20','1901-03-13',23),('McKinley','William',NULL,'Niles','OH','1843-01-29','1901-09-14',24),('Roosevelt','Theodore',NULL,'New York','NY','1858-10-27','1919-01-06',25),('Taft','William H.',NULL,'Cincinnati','OH','1857-09-15','1930-03-08',26),('Wilson','Woodrow',NULL,'Staunton','VA','1856-12-19','1924-02-03',27),('Harding','Warren G.',NULL,'Blooming Grove','OH','1865-11-02','1923-08-02',28),('Coolidge','Calvin',NULL,'Plymouth Notch','VT','1872-07-04','1933-01-05',29),('Hoover','Herbert C.',NULL,'West Branch','IA','1874-08-10','1964-10-20',30),('Roosevelt','Franklin D.',NULL,'Hyde Park','NY','1882-01-30','1945-04-12',31),('Truman','Harry S',NULL,'Lamar','MO','1884-05-08','1972-12-26',32),('Eisenhower','Dwight D.',NULL,'Denison','TX','1890-10-14','1969-03-28',33),('Kennedy','John F.',NULL,'Brookline','MA','1917-05-29','1963-11-22',34),('Johnson','Lyndon B.',NULL,'Stonewall','TX','1908-08-27','1973-01-22',35),('Nixon','Richard M.',NULL,'Yorba Linda','CA','1913-01-09','1994-04-22',36),('Ford','Gerald R.',NULL,'Omaha','NE','1913-07-14','2006-12-26',37),('Carter','James E.','Jr.','Plains','GA','1924-10-01',NULL,38),('Reagan','Ronald W.',NULL,'Tampico','IL','1911-02-06','2004-06-05',39),('Bush','George H.W.',NULL,'Milton','MA','1924-06-12',NULL,40),('Clinton','William J.',NULL,'Hope','AR','1946-08-19',NULL,41),('Bush','George W.',NULL,'New Haven','CT','1946-07-06',NULL,42),('Obama','Barack H.',NULL,'Honolulu','HI','1961-08-04',NULL,43),('Obama','Barack',NULL,'Honolulu','HA','1961-08-04',NULL,44);
/*!40000 ALTER TABLE `president` ENABLE KEYS */;
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
