--DROP TABLE MEMBER CASCADE CONSTRAINTS;

CREATE TABLE BOARD(
		BBSNO                         		NUMBER 			NULL,
		NAME                          		VARCHAR2(20)	NULL,
		PASSWORD                      		VARCHAR2(15)	NULL,
		EMAIL                         		VARCHAR2(50)	NULL,
		SUBJECT                       		VARCHAR2(50)	NULL,
		CONTENT                       		VARCHAR2(4000)	NULL,
		WRITEDATE                     		DATE		 NULL,
		MASTERID                      		NUMBER		 NULL,
		READCOUNT                     		NUMBER		 NULL,
		REPLYNUMBER                   		NUMBER		 NULL,
		REPLYSTEP                     		NUMBER		 NULL 
);
ALTER TABLE BOARD ADD CONSTRAINT IDX_BOARD_PK PRIMARY KEY (BBSNO);

insert into board values(1, '홍길동', '1234', 'hong@hong.com', '방가요', '내용없음', '2015-12-20', 1, 0, 0, 0);
insert into board values(2, '이순신', '1234', 'lee@lee.com', '나도', '내용없음', '2015-12-21', 2, 0, 0, 0);
insert into board values(3, '홍길동', '1234', 'hong@hong.com', '오랜만이야', '그렇지', '2015-12-22', 2, 0, 1, 1);
insert into board values(4, '무명씨', '1234', 'noname@name.com', '할루', '재미없음', '2015-12-23', 4, 0, 0, 0);
insert into board values(5, '홍길서', '1234', 'seo@hong.com', '나도', '나도나도', '2015-12-24', 2, 0, 2, 1);
insert into board values(6, '조심씨', '1234', 'josim@josim.com', '조심해', '아전하게', '2015-12-25', 2, 0, 1, 2);
insert into board values(7, '안전씨', '1234', 'an@anjeon.com', '자나깨나', '불조심', '2015-12-26', 4, 0, 1, 1);
insert into board values(8, '소심씨', '1234', 'so@so.com', '잘삐져', '조심씨', '2015-12-27', 2, 0, 1, 3);

COMMIT;