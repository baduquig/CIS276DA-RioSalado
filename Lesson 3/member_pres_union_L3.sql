/************
Gabe Baduqui
CIS276DA
Lesson 3
************/

-- SELECT * FROM MEMBER;
-- SELECT * FROM PRESIDENT;

-- 1B
SELECT CITY, STATE FROM MEMBER
UNION
SELECT CITY, STATE FROM PRESIDENT;