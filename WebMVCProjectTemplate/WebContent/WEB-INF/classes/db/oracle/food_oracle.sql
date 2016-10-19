--------------------------------------------------------
--  파일이 생성됨 - 화요일-10월-18-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FOOD
--------------------------------------------------------

  CREATE TABLE "HR"."FOOD" 
   (	"FOOD_NAME" VARCHAR2(26 BYTE), 
	"FOOD_INGREDIENT" VARCHAR2(26 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.FOOD
SET DEFINE OFF;
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('강황','알리신');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('건포도','칼륨');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('검정콩','식이섬유');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('고구마','비타민 C');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('고등어','마그네슘');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('고등어','비타민 D');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('고등어','퓨린');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('고추','비타민 C');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('길초근','진정제성분');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('꽁치','퓨린');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('녹차','카페인');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('녹황색채소','칼륨');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('다시마','식이섬유');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('달걀 노른자','철분');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('닭고기','철분');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('당근','칼륨');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('도미','비타민 B');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('딸기','비타민 C');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('딸기','철분');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('땅콩버터','철분');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('레몬','비타민 C');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('마늘','알리신');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('막걸리','퓨린');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('매실','칼륨');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('맥주','알코올');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('맥주','퓨린');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('메주','퓨린');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('멸치','비타민 D');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('멸치','퓨린');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('미역','식이섬유');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('바나나','마그네슘');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('바나나','비타민 B');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('바나나','칼륨');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('베이컨','퓨린');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('보리','비타민 B');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('보리','식이섬유');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('부추','알리신');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('사이다','인');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('새우','퓨린');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('생강','알리신');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('소주','알코올');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('스피루리나','마그네슘');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('시계꽃','진정제성분');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('시금치','마그네슘');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('시금치','비타민 B');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('시금치','칼륨');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('시리얼','식이섬유');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('시트러스','비타민 C');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('쌀','비타민 B');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('아몬드','마그네슘');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('에너지드링크','카페인');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('연어','비타민 D');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('오렌지','칼륨');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('오트밀','식이섬유');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('우유','비타민 B');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('위스키','알코올');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('유자','비타민 C');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('자몽','비타민C');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('정어리','퓨린');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('조개','철분');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('조개','퓨린');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('참깨','마그네슘');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('참치','철분');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('참치','퓨린');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('청어','퓨린');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('초콜릿','카페인');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('치즈','비타민 B');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('카바','진정제성분');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('커피','카페인');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('콜라','인');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('콩','비타민 B');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('콩','철분');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('키위','비타민 C');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('토마토','비타민 B');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('파프리카','비타민 C');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('표고버섯','비타민 D');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('표고버섯','식이섬유');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('호프','진정제성분');
Insert into HR.FOOD (FOOD_NAME,FOOD_INGREDIENT) values ('홍차','카페인');
