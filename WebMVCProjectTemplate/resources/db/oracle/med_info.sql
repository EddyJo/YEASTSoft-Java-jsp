
CREATE TABLE med_info(
		MED_NAME                        		VARCHAR2(15) 	NOT NULL,
		DISEASE                          		VARCHAR2(15)	NOT NULL,
);
ALTER TABLE med_info ADD CONSTRAINT IDX_MEMBER_PK PRIMARY KEY (MED_NAME);

INSERT INTO med_info (MED_NAME, DISEASE)
VALUES (1, '타이레놀', '두통');

INSERT INTO med_info (MED_NAME, DISEASE)
VALUES (2, '아스피린', '해열');

commit;