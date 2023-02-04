/*
3. To review the results of running the above script files, run the following queries and
verify your results.

a. SELECT * FROM president; Exported filename: results_presidents.csv
b. SELECT * FROM member; Exported filename: results_members.csv
c. SELECT * FROM student; Exported filename: results_students.csv
d. SELECT * FROM grade_event; Exported filename: results_grade_ev.csv
e. SELECT last_name, first_name, city, state FROM president
	WHERE last_name LIKE '%ar%'
	ORDER BY state; Exported filename: results_ar.csv


f. Make up 2 of your own interesting SELECT queries that return at least 4 records
each and have at least 2 commands(SELECT, WHERE, LIKE, ORDER BY)
similar to the one above. Save your scripts as:
*/

-- SELECT * FROM PRESIDENT;
-- SELECT * FROM MEMBER;
-- SELECT * FROM STUDENT;
-- SELECT * FROM GRADE_EVENT;
SELECT LAST_NAME, FIRST_NAME, CITY, STATE
FROM PRESIDENT
WHERE LAST_NAME LIKE '%ar%'
ORDER BY STATE;
