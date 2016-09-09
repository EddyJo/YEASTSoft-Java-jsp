--DROP TABLE MEMBER CASCADE CONSTRAINTS;

CREATE TABLE MEMBER(
		USERID                        		VARCHAR2(15) 	NOT NULL,
		NAME                          		VARCHAR2(20)	NOT NULL,
		PASSWORD                      		VARCHAR2(20)	NOT NULL,
		PHONE                         		VARCHAR2(15),
		EMAIL                       		VARCHAR2(100)
);
ALTER TABLE MEMBER ADD CONSTRAINT IDX_MEMBER_PK PRIMARY KEY (USERID);

INSERT INTO MEMBER (USERID, NAME, PASSWORD, PHONE, EMAIL)
VALUES ('admin', '관리자', '1234', '010-3402-7902', 'admin@medicine.com');

INSERT INTO MEMBER (USERID, NAME, PASSWORD, PHONE, EMAIL)
VALUES ('dachan', '황다찬', '1111', '010-1234-1111', 'chan@gmail.com');

INSERT INTO MEMBER (USERID, NAME, PASSWORD, PHONE, EMAIL)
VALUES ('yeji', '하예지', '2222', '010-1234-2222', 'yeji@gmail.com');

INSERT INTO MEMBER (USERID, NAME, PASSWORD, PHONE, EMAIL)
VALUES ('jiin', '박지인', '3333', '010-1234-3333', 'parkJI@gmail.com');

INSERT INTO MEMBER (USERID, NAME, PASSWORD, PHONE, EMAIL)
VALUES ('kyung', '김경은', '4444', '010-1234-4444', 'kyungEunKim@gmail.com');

commit;