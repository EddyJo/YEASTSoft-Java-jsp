
CREATE TABLE food_info(
		SERIAL_NUM                        		NUMBER(4) 		primary key,
		FOOD_NAME								VARCHAR2(20) 	NOT NULL,
		GOOD_DISEASE							VARCHAR2(20) 	NOT NULL,
		BAD_DISEASE								VARCHAR2(20) 	NOT NULL
);

ALTER TABLE food_info ADD CONSTRAINT IDX_MEMBER_PK PRIMARY KEY (FOOD_NAME);

INSERT INTO food_info (FOOD_NAME, GOOD_DISEASE)
VALUES(1, '자몽주스', '조울증',);

INSERT INTO food_info (FOOD_NAME, GOOD_DISEASE)
VALUES(2, '배즙', '천식',);

INSERT INTO food_info (FOOD_NAME, BAD_DISEASE)
VALUES(3, '삽겹살', ,'고지혈증');

INSERT INTO food_info (FOOD_NAME, BAD_DISEASE)
VALUES(4, '카레', ,'신우신염');

commit;