DROP TABLE food_info;
CREATE TABLE food_info(
		FOOD_SERIAL_NUM                        		NUMBER(4) 		primary key,
		FOOD_NAME								VARCHAR2(50) 	NOT NULL,
		GOOD_DISEASE							VARCHAR2(50) ,
		BAD_DISEASE								VARCHAR2(50) 	
);

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(1, '자몽주스', '조울증');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(2, '배즙', '천식');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(3, '양배추', '소화불량');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(4, '호박', '소화불량');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(5, '알로에', '고혈압');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(6, '감자', '고혈압');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(7, '달팽이', '신장질환');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(8, '뽕잎', '고혈압');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(9, '포도', '골다공증');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(10, '녹차', '콜레스테롤');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(11, '밤', '위장질환');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(12, '비파차', '천식');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(13, '귤', '동맥경화');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(14, '모시조개', '간질환');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(15, '식초', '당뇨');

INSERT INTO food_info (FOOD_SERIAL_NUM,FOOD_NAME, BAD_DISEASE)
VALUES(16, '삽겹살', '고지혈증');

INSERT INTO food_info (FOOD_SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(17, '카레', '신우신염');

INSERT INTO food_info ( FOOD_SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(18, '바나나', '고혈압');

INSERT INTO food_info ( FOOD_SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(19, '매실', '고혈압');

INSERT INTO food_info ( FOOD_SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(20, '오렌지', '고혈압');

INSERT INTO food_info ( FOOD_SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(21, '우유', '감기');

INSERT INTO food_info ( FOOD_SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(22, '요구르트', '소화불량');

INSERT INTO food_info ( FOOD_SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(23, '우유', '변비');

INSERT INTO food_info ( FOOD_SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(24, '커피', '천식');

INSERT INTO food_info ( FOOD_SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(25, '초콜렛', '천식');

INSERT INTO food_info ( FOOD_SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(26, '치즈', '아토피');

INSERT INTO food_info ( FOOD_SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(27, '고등어', '아토피');

INSERT INTO food_info ( FOOD_SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(28, '바나나', '아토피');

INSERT INTO food_info ( FOOD_SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(29, '양배추', '해열');

INSERT INTO food_info ( FOOD_SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(30, '브로컬리', '항응혈');

commit;