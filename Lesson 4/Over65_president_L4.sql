/********************
Gabe Baduqui
CIS276
Lesson 4 Project
Question 5
********************/

-- Modified
SELECT 
	CONCAT(last_name, ', ', first_name), 
    TIMESTAMPDIFF(YEAR, birth, death)
FROM 
	PRESIDENT 
WHERE 
	TIMESTAMPDIFF(YEAR, birth, death) > 65
		AND
	DEATH IS NOT NULL;


/* Original
SELECT CONCAT(last_name, ', ', first_name), TIMESTAMPDIFF(YEAR, birth, death)
FROM president WHERE Birth >’1900-1-1’ AND DEATH IS NOT NULL;
*/