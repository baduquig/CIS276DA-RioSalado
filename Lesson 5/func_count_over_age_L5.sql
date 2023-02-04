/********************
Gabe Baduqui
CIS276
Lesson 5 Project
Question 4
********************/

DELIMITER $
CREATE FUNCTION count_over_age(p_age INT)
RETURNS INT
READS SQL DATA

BEGIN

RETURN(SELECT COUNT(*) FROM PRES_AGE WHERE AGE > p_age);

END;

-- SELECT count_over_age(65);
-- SELECT count_over_age(70);