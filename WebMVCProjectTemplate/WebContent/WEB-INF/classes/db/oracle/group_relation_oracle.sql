--------------------------------------------------------
--  파일이 생성됨 - 화요일-10월-18-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GROUP_RELATION
--------------------------------------------------------

  CREATE TABLE "HR"."GROUP_RELATION" 
   (	"MED_GROUP" VARCHAR2(26 BYTE), 
	"FOOD_NAME" VARCHAR2(26 BYTE), 
	"GROUP_RELATION" VARCHAR2(26 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.GROUP_RELATION
SET DEFINE OFF;
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('혈압강하제','솔잎','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('혈압강하제','칡','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('혈압강하제','결명자','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('혈압강하제','메밀','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('혈압강하제','라면','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('혈압강하제','알코올','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('혈압강하제','튀김','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('당뇨병용제','양배추','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('당뇨병용제','호두','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('당뇨병용제','마늘','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('당뇨병용제','타히보','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('당뇨병용제','매실 액기스','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('당뇨병용제','물엿','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('당뇨병용제','초콜릿','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('당뇨병용제','잼','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('당뇨병용제','아이스크림','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('진해거담제','오미자','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('진해거담제','은행','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('진해거담제','도라지','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('진해거담제','배','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('진해거담제','더덕','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('진해거담제','튀김','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('진해거담제','우유','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('진해거담제','땅콩','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('진해거담제','복숭아','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('소화성궤양용제','흰민들레','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('소화성궤양용제','마','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('소화성궤양용제','양배추','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('소화성궤양용제','브로커리','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('소화성궤양용제','부추','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('소화성궤양용제','감자','GOOD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('소화성궤양용제','알코올','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('소화성궤양용제','커피','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('소화성궤양용제','밀가루','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('소화성궤양용제','탄산음료','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('소화성궤양용제','우유','BAD');
Insert into HR.GROUP_RELATION (MED_GROUP,FOOD_NAME,GROUP_RELATION) values ('소화성궤양용제','레몬','BAD');
