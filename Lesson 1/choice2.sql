/*
Gabe Baduqui
CIS276
Lesson 1
#3f - Choice1.sql
*/

-- Query for presidents born in Virginia
SELECT
	FIRST_NAME,
    LAST_NAME,
    CITY
FROM
	PRESIDENT
WHERE
	STATE = 'VA';