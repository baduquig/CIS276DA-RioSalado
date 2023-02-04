-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema sampdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sampdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sampdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `sampdb` ;

-- -----------------------------------------------------
-- Table `sampdb`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sampdb`.`student` (
  `name` VARCHAR(20) NOT NULL,
  `sex` ENUM('F', 'M') NOT NULL,
  `student_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`student_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 35
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sampdb`.`absence`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sampdb`.`absence` (
  `student_id` INT UNSIGNED NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (`student_id`, `date`),
  CONSTRAINT `absence_ibfk_1`
    FOREIGN KEY (`student_id`)
    REFERENCES `sampdb`.`student` (`student_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sampdb`.`apothegm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sampdb`.`apothegm` (
  `attribution` VARCHAR(40) NULL DEFAULT NULL,
  `phrase` TEXT NULL DEFAULT NULL,
  FULLTEXT INDEX `phrase` (`phrase`) VISIBLE,
  FULLTEXT INDEX `attribution` (`attribution`) VISIBLE,
  FULLTEXT INDEX `phrase_2` (`phrase`, `attribution`) VISIBLE)
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sampdb`.`grade_event`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sampdb`.`grade_event` (
  `date` DATE NOT NULL,
  `category` ENUM('T', 'Q') NOT NULL,
  `event_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`event_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sampdb`.`member`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sampdb`.`member` (
  `member_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `last_name` VARCHAR(20) NOT NULL,
  `first_name` VARCHAR(20) NOT NULL,
  `suffix` VARCHAR(5) NULL DEFAULT NULL,
  `expiration` DATE NULL DEFAULT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `street` VARCHAR(50) NULL DEFAULT NULL,
  `city` VARCHAR(50) NULL DEFAULT NULL,
  `state` VARCHAR(2) NULL DEFAULT NULL,
  `zip` VARCHAR(10) NULL DEFAULT NULL,
  `phone` VARCHAR(20) NULL DEFAULT NULL,
  `interests` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`member_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 104
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sampdb`.`president`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sampdb`.`president` (
  `last_name` VARCHAR(15) NOT NULL,
  `first_name` VARCHAR(15) NOT NULL,
  `suffix` VARCHAR(5) NULL DEFAULT NULL,
  `city` VARCHAR(20) NOT NULL,
  `state` VARCHAR(2) NOT NULL,
  `birth` DATE NOT NULL,
  `death` DATE NULL DEFAULT NULL,
  `pres_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pres_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 45
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sampdb`.`pres_term`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sampdb`.`pres_term` (
  `pres_id` INT UNSIGNED NOT NULL,
  `term_start_date` DATE NOT NULL,
  `term_end_date` DATE NULL DEFAULT NULL,
  `number_of_elections_won` TINYINT NULL DEFAULT NULL,
  `reason_for_leaving_office` VARCHAR(254) NULL DEFAULT NULL,
  `term_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`term_id`),
  INDEX `PRES_TERM_FK_PRES_ID` (`pres_id` ASC) VISIBLE,
  CONSTRAINT `PRES_TERM_FK_PRES_ID`
    FOREIGN KEY (`pres_id`)
    REFERENCES `sampdb`.`president` (`pres_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 45
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sampdb`.`score`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sampdb`.`score` (
  `student_id` INT UNSIGNED NOT NULL,
  `event_id` INT UNSIGNED NOT NULL,
  `score` INT NOT NULL,
  PRIMARY KEY (`event_id`, `student_id`),
  INDEX `student_id` (`student_id` ASC) VISIBLE,
  CONSTRAINT `score_ibfk_1`
    FOREIGN KEY (`event_id`)
    REFERENCES `sampdb`.`grade_event` (`event_id`),
  CONSTRAINT `score_ibfk_2`
    FOREIGN KEY (`student_id`)
    REFERENCES `sampdb`.`student` (`student_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `sampdb` ;

-- -----------------------------------------------------
-- Placeholder table for view `sampdb`.`pres_age`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sampdb`.`pres_age` (`last_name` INT, `first_name` INT, `birth` INT, `death` INT, `age` INT);

-- -----------------------------------------------------
-- Placeholder table for view `sampdb`.`pres_age_in_office`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sampdb`.`pres_age_in_office` (`FIRST_NAME` INT, `LAST_NAME` INT, `BIRTH` INT, `TERM_START_DATE` INT, `age` INT);

-- -----------------------------------------------------
-- Placeholder table for view `sampdb`.`vstudent`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sampdb`.`vstudent` (`student_id` INT, `name` INT, `date` INT, `score` INT, `category` INT);

-- -----------------------------------------------------
-- function count_over_age
-- -----------------------------------------------------

DELIMITER $$
USE `sampdb`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `count_over_age`(p_age INT) RETURNS int
    READS SQL DATA
BEGIN

RETURN(SELECT COUNT(*) FROM PRES_AGE WHERE AGE > p_age);

END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure show_over_age
-- -----------------------------------------------------

DELIMITER $$
USE `sampdb`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `show_over_age`(p_age INT)
BEGIN

SELECT
	FIRST_NAME,
    LAST_NAME,
    BIRTH,
    DEATH
FROM
	PRES_AGE
WHERE
	AGE > p_age
ORDER BY
	AGE DESC;

END$$

DELIMITER ;

-- -----------------------------------------------------
-- View `sampdb`.`pres_age`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sampdb`.`pres_age`;
USE `sampdb`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sampdb`.`pres_age` AS select `sampdb`.`president`.`last_name` AS `last_name`,`sampdb`.`president`.`first_name` AS `first_name`,`sampdb`.`president`.`birth` AS `birth`,`sampdb`.`president`.`death` AS `death`,timestampdiff(YEAR,`sampdb`.`president`.`birth`,`sampdb`.`president`.`death`) AS `age` from `sampdb`.`president`;

-- -----------------------------------------------------
-- View `sampdb`.`pres_age_in_office`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sampdb`.`pres_age_in_office`;
USE `sampdb`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sampdb`.`pres_age_in_office` AS select `p`.`first_name` AS `FIRST_NAME`,`p`.`last_name` AS `LAST_NAME`,`p`.`birth` AS `BIRTH`,`t`.`term_start_date` AS `TERM_START_DATE`,timestampdiff(YEAR,`p`.`birth`,`t`.`term_start_date`) AS `age` from (`sampdb`.`president` `p` join `sampdb`.`pres_term` `t` on((`p`.`pres_id` = `t`.`pres_id`))) order by timestampdiff(YEAR,`p`.`birth`,`t`.`term_start_date`);

-- -----------------------------------------------------
-- View `sampdb`.`vstudent`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sampdb`.`vstudent`;
USE `sampdb`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sampdb`.`vstudent` AS select `sampdb`.`student`.`student_id` AS `student_id`,`sampdb`.`student`.`name` AS `name`,`sampdb`.`grade_event`.`date` AS `date`,`sampdb`.`score`.`score` AS `score`,`sampdb`.`grade_event`.`category` AS `category` from ((`sampdb`.`grade_event` join `sampdb`.`score`) join `sampdb`.`student` on(((`sampdb`.`grade_event`.`event_id` = `sampdb`.`score`.`event_id`) and (`sampdb`.`score`.`student_id` = `sampdb`.`student`.`student_id`)))) order by `sampdb`.`student`.`name`;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
