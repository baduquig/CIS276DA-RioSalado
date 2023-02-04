/********************
Gabe Baduqui
CIS276
Lesson 5 Project
Question 5
********************/
DELIMITER $

CREATE PROCEDURE show_over_age(p_age INT)

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

END$

-- CALL show_over_age(65);
-- CALL show_over_age(70);