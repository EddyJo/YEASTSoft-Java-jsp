DROP TABLE search_log;

CREATE TABLE search_log(
		SERIAL_NUM                        		NUMBER(4)    	PRIMARY KEY,
		USERID                          		VARCHAR2(15)	NOT NULL,
		MED_KEY    	                    		VARCHAR2(50)	NOT NULL,
		FOOD_KEY                         		VARCHAR2(50)	NOT NULL,
		SEARCH_DATE                       		VARCHAR2(20)	NOT NULL
);


INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (1, 'dachan', '타이레놀', '커피', '16/09/04');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (2, 'admin', '아스피린', '사과', '16/09/04');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (3, 'admin', '아스피린', '사과', '16/09/04');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (4, 'yeji', '아스피린', '우유', '16/09/04');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (5, 'jiin', '드로넬', '포도', '16/09/04');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (6, 'kyung', '드로넬', '포도', '16/09/05');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (7, 'kyung', '아모디핀', '알로에', '16/09/05');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (8, 'jiin', '코라솔', '우유', '16/09/05');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (9, 'jiin', '아모디핀', '알로에', '16/09/05');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (10, 'kyung', '코라솔', '우유', '16/09/06');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (11, 'kyung', '아모디핀', '매실', '16/09/07');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (12, 'admin', '아모디핀', '알로에', '16/09/07');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (13, 'admin', '코라솔', '우유', '16/09/07');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (14, 'admin', '아모디핀', '매실', '16/09/07');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (15, 'jiin', '코라솔', '우유', '16/09/07');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (16, 'admin', '아모디핀', '매실', '16/09/08');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (17, 'yeji', '아모디핀', '알로에', '16/09/08');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (18, 'jiin', '아모디핀', '매실', '16/09/08');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (19, 'dachan', '드로넬', '포도', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (20, 'jiin', '드로넬', '포도', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (21, 'dachan', '드로넬', '포도', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (22, 'dachan', '아스피린', '양배추', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (23, 'jiin', '아스피린', '양배추', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (24, 'dachan', '아모디핀', '매실', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (25, 'dachan', '코라솔', '우유', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (26, 'yeji', '코라솔', '우유', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (27, 'yeji', '아모디핀', '매실', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (28, 'yeji', '아스피린', '양배추', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (29, 'dachan', '아모디핀', '매실', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (30, 'dachan', '코라솔', '우유', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (31, 'dachan', '아스피린', '양배추', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (32, 'yeji', '아스피린', '양배추', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (33, 'yeji', '크레스토', '삼겹살', '16/09/09');

INSERT INTO search_log (SERIAL_NUM, USERID, MED_KEY, FOOD_KEY, SEARCH_DATE)
VALUES (34, 'yeji', '크레스토', '삼겹살', '16/09/09');
--test
commit;