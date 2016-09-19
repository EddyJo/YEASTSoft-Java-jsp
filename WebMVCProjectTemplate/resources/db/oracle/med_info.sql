drop Table med_info;
CREATE TABLE med_info(
		MED_SERIAL_NUM								NUMBER(4) 		primary key,
		MED_NAME                        		VARCHAR2(50) 	NOT NULL,
		DISEASE                          		VARCHAR2(50)	NOT NULL
);

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (1, '타이레놀', '두통');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (2, '아스피린', '해열');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (3, '코라솔', '감기');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (4, '엘칸', '갑상선 질환');
INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (5, '크레스토', '고지혈증');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (6, '아모디핀', '고혈압');
INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (7, '드로넬', '골다공증');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (8, '아스피린', '과민성 대장증후군');
INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (9, '이부페논', '근육통');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (10, '우니섬', '녹내장');
INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (11, '타이레놀', '뇌졸중');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (12, '아스피린', '당뇨병');
INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (13, '타이레놀', '백내장');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (14, '아스피린', '변비');
INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (15, '타이레놀', '부정맥');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (16, '아스피린', '불면증');
INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (17, '타이레놀', '빈혈');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (18, '아스피린', '신부전');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (19, '아스피린', '설사');
INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (20, '타이레놀', '심근경색');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (21, '아스피린', '비염');
INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (22, '타이레놀', '식도염');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (23, '아스피린', '우울증');
INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (24, '이부프로펜', '염증');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (25, '아스피린', '녹내장');
INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (26, '타이레놀', '뇌졸중');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (27, '아스피린', '당뇨병');
INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (28, '타이레놀', '백내장');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (29, '아스피린', '변비');
INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (30, '타이레놀', '부정맥');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (31, '아스피린', '불면증');
INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (32, '타이레놀', '빈혈');

INSERT INTO med_info (MED_SERIAL_NUM, MED_NAME, DISEASE)
VALUES (33, '아스피린', '신부전');

commit;