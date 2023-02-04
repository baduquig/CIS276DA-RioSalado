/************
Gabe Baduqui
CIS276DA
Lesson 3
************/


-- 1D
SELECT * 
FROM APOTHEGM 
WHERE 
	MATCH (PHRASE) AGAINST ('soft')
		OR
	MATCH (PHRASE) AGAINST ('candle');