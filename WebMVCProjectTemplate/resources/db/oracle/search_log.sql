--DROP TABLE MEMBER CASCADE CONSTRAINTS;

CREATE TABLE search_log(
		SERIAL_NUM                        		NUMBER(4)    	NOT NULL,
		USERID                          		VARCHAR2(15)	NOT NULL,
		MED_KEY    	                    		VARCHAR2(20)	NOT NULL,
		FOOD_KEY                         		VARCHAR2(20)	NOT NULL,
		SEARCH_DATE                       		VARCHAR2(20)	NOT NULL
);
ALTER TABLE search_log ADD CONSTRAINT IDX_MEMBER_PK PRIMARY KEY (SERIAL_NUM);

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (1, 'DCH', '타이레놀', '커피', '2016/09/04');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (2, 'HYJ', '아스피린', '사과', '2016/09/05');

--test
commit;