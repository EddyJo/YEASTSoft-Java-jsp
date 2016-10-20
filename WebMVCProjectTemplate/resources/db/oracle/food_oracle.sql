--------------------------------------------------------
--  파일이 생성됨 - 목요일-10월-20-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FOOD
--------------------------------------------------------

  CREATE TABLE "HR"."FOOD" 
   (	"FOOD_ID" NUMBER(5,0), 
	"FOOD_NAME" VARCHAR2(26 BYTE), 
	"FOOD_INGREDIENT" VARCHAR2(26 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.FOOD
SET DEFINE OFF;
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (1,'강황','알리신');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (2,'건포도','칼륨');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (3,'검정콩','식이섬유');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (4,'고구마','비타민 C');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (5,'고등어','마그네슘');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (6,'고등어','비타민 D');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (7,'고등어','퓨린');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (8,'고추','비타민 C');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (9,'길초근','진정제성분');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (10,'꽁치','퓨린');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (11,'녹차','카페인');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (12,'녹황색채소','칼륨');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (13,'다시마','식이섬유');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (14,'달걀 노른자','철분');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (15,'닭고기','철분');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (16,'당근','칼륨');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (17,'도미','비타민 B');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (18,'딸기','비타민 C');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (19,'딸기','철분');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (20,'땅콩버터','철분');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (21,'레몬','비타민 C');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (22,'마늘','알리신');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (23,'막걸리','퓨린');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (24,'매실','칼륨');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (25,'맥주','알코올');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (26,'맥주','퓨린');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (27,'메주','퓨린');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (28,'멸치','비타민 D');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (29,'멸치','퓨린');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (30,'미역','식이섬유');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (31,'바나나','마그네슘');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (32,'바나나','비타민 B');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (33,'바나나','칼륨');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (34,'베이컨','퓨린');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (35,'보리','비타민 B');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (36,'보리','식이섬유');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (37,'부추','알리신');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (38,'사이다','인');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (39,'새우','퓨린');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (40,'생강','알리신');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (41,'소주','알코올');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (42,'스피루리나','마그네슘');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (43,'시계꽃','진정제성분');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (44,'시금치','마그네슘');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (45,'시금치','비타민 B');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (46,'시금치','칼륨');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (47,'시리얼','식이섬유');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (48,'시트러스','비타민 C');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (49,'쌀','비타민 B');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (50,'아몬드','마그네슘');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (51,'에너지드링크','카페인');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (52,'연어','비타민 D');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (53,'오렌지','칼륨');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (54,'오트밀','식이섬유');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (55,'우유','비타민 B');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (56,'위스키','알코올');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (57,'유자','비타민 C');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (58,'자몽','비타민C');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (59,'정어리','퓨린');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (60,'조개','철분');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (61,'조개','퓨린');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (62,'참깨','마그네슘');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (63,'참치','철분');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (64,'참치','퓨린');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (65,'청어','퓨린');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (66,'초콜릿','카페인');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (67,'치즈','비타민 B');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (68,'카바','진정제성분');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (69,'커피','카페인');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (70,'콜라','인');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (71,'콩','비타민 B');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (72,'콩','철분');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (73,'키위','비타민 C');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (74,'토마토','비타민 B');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (75,'파프리카','비타민 C');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (76,'표고버섯','비타민 D');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (77,'표고버섯','식이섬유');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (78,'호프','진정제성분');
Insert into HR.FOOD (FOOD_ID,FOOD_NAME,FOOD_INGREDIENT) values (79,'홍차','카페인');
--------------------------------------------------------
--  DDL for Index SYS_C007467
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007467" ON "HR"."FOOD" ("FOOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table FOOD
--------------------------------------------------------

  ALTER TABLE "HR"."FOOD" MODIFY ("FOOD_INGREDIENT" NOT NULL ENABLE);
  ALTER TABLE "HR"."FOOD" MODIFY ("FOOD_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."FOOD" ADD PRIMARY KEY ("FOOD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
