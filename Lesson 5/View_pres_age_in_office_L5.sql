/********************
Gabe Baduqui
CIS276
Lesson 5 Project
Question 3
********************/

-- select * from pres_term;
-- select * from president;

DROP VIEW IF EXISTS pres_age_in_office;
CREATE VIEW pres_age_in_office AS
SELECT
	P.FIRST_NAME,
    P.LAST_NAME,
	P.BIRTH,
    T.TERM_START_DATE,
    TIMESTAMPDIFF(YEAR, P.BIRTH, T.TERM_START_DATE) AS age
FROM
	PRESIDENT P
		INNER JOIN PRES_TERM T
			ON P.PRES_ID = T.PRES_ID
ORDER BY
	AGE;

-- select * from pres_age_in_office;