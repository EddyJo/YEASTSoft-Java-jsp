DROP TABLE food_info;
CREATE TABLE food_info(
		SERIAL_NUM                        		NUMBER(4) 		primary key,
		FOOD_NAME								VARCHAR2(50) 	NOT NULL,
		GOOD_DISEASE							VARCHAR2(50) ,
		BAD_DISEASE								VARCHAR2(50) 	
);

INSERT INTO food_info (SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(1, '자몽주스', '조울증');

INSERT INTO food_info (SERIAL_NUM,FOOD_NAME, GOOD_DISEASE)
VALUES(2, '배즙', '천식');

INSERT INTO food_info (SERIAL_NUM,FOOD_NAME, BAD_DISEASE)
VALUES(3, '삽겹살', '고지혈증');

INSERT INTO food_info (SERIAL_NUM, FOOD_NAME, BAD_DISEASE)
VALUES(4, '카레', '신우신염');

commit;