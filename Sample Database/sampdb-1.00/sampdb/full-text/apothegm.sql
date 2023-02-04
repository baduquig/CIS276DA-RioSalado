# create, load, index theh apothegm table

DROP TABLE IF EXISTS apothegm;
#@ _SETUP_TABLE_
CREATE TABLE apothegm (attribution VARCHAR(40), phrase TEXT) ENGINE=MyISAM;
-- LOAD DATA LOCAL INFILE 'apothegm.txt' INTO TABLE apothegm;

INSERT INTO APOTHEGM VALUES ('Aeschylus', 'Time as he grows old teaches many lessons');
INSERT INTO APOTHEGM VALUES ('Alexander Graham Bell', 'Mr. Watson, come here. I want you!');
INSERT INTO APOTHEGM VALUES ('Benjamin Franklin', 'It is hard for an empty bag to stand upright');
INSERT INTO APOTHEGM VALUES ('Benjamin Franklin', 'Little strokes fell great oaks');
INSERT INTO APOTHEGM VALUES ('Benjamin Franklin', 'Remember that time is money');
INSERT INTO APOTHEGM VALUES ('Miguel de Cervantes', 'Bell, book, and candle');
INSERT INTO APOTHEGM VALUES ('Proverbs 15:1', 'A soft answer turneth away wrath');
INSERT INTO APOTHEGM VALUES ('Theodore Roosevelt', 'Speak softly and carry a big stick');
INSERT INTO APOTHEGM VALUES ('William Shakespeare', 'But, soft! what light through yonder window breaks?');
INSERT INTO APOTHEGM VALUES ('Robert Burton', 'I light my candle from their torches.');

ALTER TABLE apothegm
  ADD FULLTEXT (phrase),
  ADD FULLTEXT (attribution),
  ADD FULLTEXT (phrase, attribution);
#@ _SETUP_TABLE_

-- 10:53:11	LOAD DATA LOCAL INFILE 'apothegm.txt' INTO TABLE apothegm	Error Code: 3948. Loading local data is disabled; this must be enabled on both the client and server sides	0.000 sec
