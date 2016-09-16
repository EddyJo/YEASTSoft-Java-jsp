--DROP TABLE MEMBER CASCADE CONSTRAINTS;

CREATE TABLE MEMBER(
		USERID                        		VARCHAR2(15) 	NOT NULL,
		NAME                          		VARCHAR2(20)	NOT NULL,
		PASSWORD                      		VARCHAR2(20)	NOT NULL,
		PHONE                         		VARCHAR2(15),
		EMAIL                       		VARCHAR2(100),
		GENDER								VARCHAR2(10)	NOT NULL,
		AGE									VARCHAR2(10)		NOT NULL,
		LOCATION							VARCHAR2(20)	NOT NULL
		
		
);
ALTER TABLE MEMBER ADD CONSTRAINT IDX_MEMBER_PK PRIMARY KEY (USERID);

INSERT INTO MEMBER (USERID, NAME, PASSWORD, PHONE, EMAIL, GENDER, AGE, LOCATION)
VALUES ('admin', '관리자', '1234', '010-3402-7902', 'admin@medicine.com', 'M', '30', 'Seoul');

INSERT INTO MEMBER (USERID, NAME, PASSWORD, PHONE, EMAIL, GENDER, AGE, LOCATION)
VALUES ('dachan', '황다찬', '1111', '010-1234-1111', 'chan@gmail.com', 'M', '28', 'Seoul');

INSERT INTO MEMBER (USERID, NAME, PASSWORD, PHONE, EMAIL, GENDER, AGE, LOCATION)
VALUES ('eddy', '조경현', '1111', '010-1234-1111', 'eddy@gmail.com', 'M', '27', 'Gyung-ki');

INSERT INTO MEMBER (USERID, NAME, PASSWORD, PHONE, EMAIL, GENDER, AGE, LOCATION)
VALUES ('yeji', '하예지', '2222', '010-1234-2222', 'yeji@gmail.com', 'F', '26', 'Changwon');

INSERT INTO MEMBER (USERID, NAME, PASSWORD, PHONE, EMAIL, GENDER, AGE, LOCATION)
VALUES ('jiin', '박지인', '3333', '010-1234-3333', 'parkJI@gmail.com', 'F', '25', 'Gyung-ki');

INSERT INTO MEMBER (USERID, NAME, PASSWORD, PHONE, EMAIL, GENDER, AGE, LOCATION)
VALUES ('kyung', '김경은', '4444', '010-1234-4444', 'kyungEunKim@gmail.com', 'F', '25', 'Gwang-ju');

commit;