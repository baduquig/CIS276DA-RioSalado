/********************
Gabe Baduqui
CIS276
Lesson 4 Project
Question 4
********************/

-- first and last name, date of birth, date of death, start and end dates in office, and the reason that they left the office
SELECT
	P.FIRST_NAME,
    P.LAST_NAME,
    P.BIRTH,
    T.TERM_START_DATE,
    T.TERM_END_DATE,
    T.REASON_FOR_LEAVING_OFFICE
FROM
	PRESIDENT P
		INNER JOIN PRES_TERM T
			ON P.PRES_ID = T.PRES_ID
WHERE
	P.DEATH = T.TERM_END_DATE;
