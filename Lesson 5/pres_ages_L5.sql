/********************
Gabe Baduqui
CIS276
Lesson 5 Project
Question 1 - 2
********************/

/* Question 1 */
# View pres_age, selects presidents and computes their ages
DROP VIEW IF EXISTS pres_age;
CREATE VIEW pres_age AS
SELECT last_name, first_name, birth, death,
TIMESTAMPDIFF(YEAR, birth, death) AS age
FROM president;
#

/* Question 2 */
-- select * from pres_age;