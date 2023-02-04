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
-- Temporary view structure for view `vstudent`
--

DROP TABLE IF EXISTS `vstudent`;
/*!50001 DROP VIEW IF EXISTS `vstudent`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vstudent` AS SELECT 
 1 AS `student_id`,
 1 AS `name`,
 1 AS `date`,
 1 AS `score`,
 1 AS `category`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pres_age_in_office`
--

DROP TABLE IF EXISTS `pres_age_in_office`;
/*!50001 DROP VIEW IF EXISTS `pres_age_in_office`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pres_age_in_office` AS SELECT 
 1 AS `FIRST_NAME`,
 1 AS `LAST_NAME`,
 1 AS `BIRTH`,
 1 AS `TERM_START_DATE`,
 1 AS `age`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pres_age`
--

DROP TABLE IF EXISTS `pres_age`;
/*!50001 DROP VIEW IF EXISTS `pres_age`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pres_age` AS SELECT 
 1 AS `last_name`,
 1 AS `first_name`,
 1 AS `birth`,
 1 AS `death`,
 1 AS `age`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vstudent`
--

/*!50001 DROP VIEW IF EXISTS `vstudent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vstudent` AS select `student`.`student_id` AS `student_id`,`student`.`name` AS `name`,`grade_event`.`date` AS `date`,`score`.`score` AS `score`,`grade_event`.`category` AS `category` from ((`grade_event` join `score`) join `student` on(((`grade_event`.`event_id` = `score`.`event_id`) and (`score`.`student_id` = `student`.`student_id`)))) order by `student`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pres_age_in_office`
--

/*!50001 DROP VIEW IF EXISTS `pres_age_in_office`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pres_age_in_office` AS select `p`.`first_name` AS `FIRST_NAME`,`p`.`last_name` AS `LAST_NAME`,`p`.`birth` AS `BIRTH`,`t`.`term_start_date` AS `TERM_START_DATE`,timestampdiff(YEAR,`p`.`birth`,`t`.`term_start_date`) AS `age` from (`president` `p` join `pres_term` `t` on((`p`.`pres_id` = `t`.`pres_id`))) order by timestampdiff(YEAR,`p`.`birth`,`t`.`term_start_date`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pres_age`
--

/*!50001 DROP VIEW IF EXISTS `pres_age`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pres_age` AS select `president`.`last_name` AS `last_name`,`president`.`first_name` AS `first_name`,`president`.`birth` AS `birth`,`president`.`death` AS `death`,timestampdiff(YEAR,`president`.`birth`,`president`.`death`) AS `age` from `president` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-19 11:57:42
