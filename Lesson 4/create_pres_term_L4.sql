/********************
Gabe Baduqui
CIS276
Lesson 4 Project
Question 2
********************/

CREATE TABLE pres_term (
	pres_id INT UNSIGNED NOT NULL,
	term_start_date DATE NOT NULL,
	term_end_date DATE NULL,
	number_of_elections_won TINYINT NULL,
	reason_for_leaving_office VARCHAR(254) NULL,
	term_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
);

ALTER TABLE PRES_TERM
	ADD CONSTRAINT PRES_TERM_FK_PRES_ID FOREIGN KEY (PRES_ID) REFERENCES PRESIDENT(PRES_ID);

