/************
Gabe Baduqui
CIS276DA
Lesson 3
************/

-- 1A
-- SELECT * FROM STUDENT;
-- SELECT * FROM SCORE;
-- SELECT * FROM GRADE_EVENT;

SELECT
	STUDENT.NAME,
    STUDENT.STUDENT_ID,
    GRADE_EVENT.DATE,
    GRADE_EVENT.EVENT_ID,
    GRADE_EVENT.CATEGORY,
    SCORE.SCORE
FROM
	STUDENT
		INNER JOIN GRADE_EVENT
		LEFT JOIN SCORE
			ON STUDENT.STUDENT_ID = SCORE.STUDENT_ID
			AND GRADE_EVENT.EVENT_ID = SCORE.EVENT_ID
WHERE
	SCORE.SCORE IS NULL
ORDER BY
	STUDENT.STUDENT_ID,
    GRADE_EVENT.EVENT_ID;
		