--------------------------------------------------------
--  파일이 생성됨 - 목요일-10월-20-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MED
--------------------------------------------------------

  CREATE TABLE "HR"."MED" 
   (	"MED_ID" NUMBER(5,0), 
	"MED_NAME" VARCHAR2(30 BYTE), 
	"MED_MAIN_INGREDIENT" VARCHAR2(40 BYTE), 
	"MED_GROUP" VARCHAR2(30 BYTE), 
	"MED_DISEASE" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.MED
SET DEFINE OFF;
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (1,'싱귤레어정','몬테루카스트나트륨','알레르기','가려움증');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (2,'아라스틴정','아젤라스틴염산염','기타의 알레르기용약','가려움증');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (3,'덱시핀정','덱시부프로펜 디씨','소염제','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (4,'슈다페드정','슈도에페드린염산염','호흡기관용약','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (5,'뉴록사신정','시프로플록사신',null,'감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (6,'아마돌정','아세트아미노펜','소염제','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (7,'아마돌정','아세트아미노펜','진통제','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (8,'아마돌정','아세트아미노펜','해열제','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (9,'아스타펜정','아세트아미노펜','해열제','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (10,'엑스페인세미정','아세트아미노펜','소염제','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (11,'엑스페인세미정','아세트아미노펜','진통제','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (12,'엑스페인세미정','아세트아미노펜','해열제','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (13,'타이레놀이알','아세트아미노펜','해열제','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (14,'타이레놀정','아세트아미노펜','소염제','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (15,'타이레놀정','아세트아미노펜','진통제','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (16,'타이레놀정','아세트아미노펜','해열제','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (17,'코미시럽','클로르페니라민말레산염','항히스타민제','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (18,'움카민시럽','펠라고니움시도이데스','기타의 호흡기관용약','감기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (19,'레보카신정','레보플록사신','화학요법제','감염성 질환');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (20,'리피칸정','무수아토르바스타틴칼슘','동맥경화용제','고지혈증');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (21,'아토스타정','무수아토르바스타틴칼슘','동맥경화용제','고지혈증');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (22,'코자정','로사르탄칼륨','혈압강하제','고혈압');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (23,'리피칸정','무수아토르바스타틴칼슘','동맥경화용제','고혈압');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (24,'아토스타정','무수아토르바스타틴칼슘','동맥경화용제','고혈압');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (25,'베스티핀정','암로디핀베실산염','혈압강하제','고혈압');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (26,'코자플러스정','히드로클로로티아지드','혈압강하제','고혈압');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (27,'레큐틴정','트리메부틴말레산염','위장관 운동 조절제','과민성대장증후군');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (28,'보나링에이정','디멘히드리네이트','최토제','구토, 어지러움');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (29,'피코펜시럽','이부프로펜','항균제','그람양성균');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (30,'코대원정','디히드로코데인타르타르산염','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (31,'레브로콜정','레보드로프로피진','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (32,'크린세프캡슐','세파클러','기관지약','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (33,'곰실린캡슐','아목시실린','그람양성','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (34,'아모크라정','아목시실린나트륨','그람양성','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (35,'아모크라듀오시럽','아목시실린수화물','기관지약','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (36,'아이콜시럽','아세트아미노펜','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (37,'시스타인캡슐','아세틸시스테인','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (38,'시네츄라','아이비엽','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (39,'코푸솔정','아이비엽','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (40,'암펙솔정','암브록솔염산염','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (41,'오구멘틴정','클라불란산칼륨','그람양성','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (42,'클래리시드건조시럽','클래리트로마이신','항생물질 제제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (43,'파이로신정','클래리트로마이신','항생물질 제제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (44,'세브론에이시럽','클로르페니라민말레산염','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (45,'코대원시럽','클로르페니라민말레산염','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (46,'코데신정','클로르페니라민말레산염','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (47,'코푸시럽','클로르페니라민말레산염','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (48,'새키날린패치','톨로부테롤','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (49,'호쿠날린패치','톨로부테롤','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (50,'애디펜시럽','푸마르산케토티펜','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (51,'뮤코스판정','헤데라헬리시스엽','진해거담제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (52,'코딜라트정','브롬화수소산페노테롤','진해거담제','기관지천식');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (53,'설포라제캡슐','아세브로필린','호흡기관용약','기관지천식');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (54,'자스판정','케토티펜푸마르산염','진해거담제','기관지천식');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (55,'다이비스정','메트포르민염산염','당뇨병용제','당뇨');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (56,'다이크로짇정','히드로클로로티아지드','당뇨병용제','당뇨');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (57,'코자정','로사르탄칼륨','혈압강하제','당뇨병');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (58,'코딜라트정','브롬화수소산페노테롤','진해거담제','두드러기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (59,'자스판정','케토티펜푸마르산염','진해거담제','두드러기');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (60,'덱시로펜정','덱시부프로펜','소염제','류마티스관절염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (61,'아클론정','아세클로페낙','소염제','류마티스관절염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (62,'스토펜정','탈니플루메이트','소염제','류마티스관절염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (63,'피코펜시럽','이부프로펜','항균제','리케치아');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (64,'설포라제캡슐','아세브로필린','호흡기관용약','부비동염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (65,'피코펜시럽','이부프로펜','항균제','비루스');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (66,'싱귤레어정','몬테루카스트나트륨','알레르기','비염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (67,'아라스틴정','아젤라스틴염산염','알레르기용약','비염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (68,'페니라민정','클로르페니라민말레산염','항히스타민제','비염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (69,'디엠정','돔페리돈말레산염','소화기관용약','소화기계 질환');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (70,'레보프라이드정','레보설피리드','소화기관용약','소화기계 질환');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (71,'가스모틴정','모사프리드시트르산염수화','소화기관용약','소화기계 질환');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (72,'메디락에스산','바실루스서브틸리스균','정장제','소화기계 질환');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (73,'마로겔정','수산화마그네슘','제산제','소화기계 질환');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (74,'알라스판캡슐','알베린시트르산염','소화기관용약','소화기계 질환');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (75,'가나칸정','이토프리드염산염','소화기관용약','소화기계 질환');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (76,'포리부틴드라이시럽','트리메부틴말리산염','소화기관용약','소화기계 질환');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (77,'펜타올정','시메티콘','소화효소제','소화불량');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (78,'코딜라트정','브롬화수소산페노테롤','진해거담제','습진');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (79,'자스판정','케토티펜푸마르산염','진해거담제','습진');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (80,'레큐틴정','트리메부틴말레산염','위장관 운동 조절제','식도역류');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (81,'리피칸정','무수아토르바스타틴칼슘','동맥경화용제','심근경색');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (82,'아토스타정','무수아토르바스타틴칼슘','동맥경화용제','심근경색');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (83,'보령아스트릭캡슐','아스피린','항응고제','심근경색');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (84,'네오세틴액','레보세티리진염산염','항히스타민제','알레르기 비염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (85,'레보세잘정','레보세티리진염산염','항히스타민제','알레르기 비염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (86,'아니스틴정','메퀴타진','항히스타민제','알레르기 비염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (87,'세트린정','세티리진염산염','항히스타민제','알레르기 비염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (88,'액티피드시럽','슈도에페드린염산염','항히스타민제','알레르기 비염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (89,'푸라콩정','피프린히드리네이트','항히스타민제','알레르기 비염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (90,'맥시부펜시럽','덱시부프로펜','소염진통제','염증');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (91,'록스펜정','록소프로펜나트륨수화물','소염제','염증');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (92,'레오다제정','스트렙토키나제','효소제제','염증');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (93,'에페신정','에페리손염산염','골격근이완제','요통');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (94,'알비스정','라니티딘염산염','소화성궤양용제','위궤양');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (95,'알비스정','라니티딘염산염','소화성궤양용제','위궤양');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (96,'잔탁정','라니티딘염산염','소화성궤양용제','위궤양');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (97,'잔탁정','라니티딘염산염','소화성궤양용제','위궤양');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (98,'무코스타정','레바미피드','소화성궤양용제','위궤양');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (99,'에취투정','시메티딘','소화성궤양용제','위궤양');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (100,'알마겔정','알마게이트','제산제','위궤양');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (101,'유파시딘정','애엽이소프로판올연조엑스','소화성궤양용제','위궤양');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (102,'지소렌정','애엽이소프로판올연조엑스','소화성궤양용제','위궤양');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (103,'알마겔정','알마게이트','제산제','위염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (104,'자나팜정','알프라졸람','정신신경용제','정신/행동장애');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (105,'아마릴정','글리메피리드',null,'천식');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (106,'클래리시드건조시럽','클래리트로마이신','항생물질 제제','편두염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (107,'파이로신정','클래리트로마이신','항생물질 제제','편두염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (108,'클래리시드건조시럽','클래리트로마이신','항생물질 제제','폐렴');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (109,'파이로신정','클래리트로마이신','항생물질 제제','폐렴');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (110,'유시락스정','히드록시진염산염','정신신경용제','피부염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (111,'페니라민정','클로르페니라민말레산염','항히스타민제','피부질환');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (112,'바리움정','디아제팜','정신신경용제',null);
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (113,'메니솔론정','메틸프레드니솔론','부신호르몬제',null);
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (114,'티램정','티로프라미드염산염','진경제',null);
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (115,'니소론정','프레드니솔론','부신호르몬제',null);
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (116,'히아루론점안액','히알루론산나트륨','안과용제',null);
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (117,'곰실린캡슐','아목시실린','음성균제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (118,'아모크라정','아목시실린나트륨','음성균제','기관지염');
Insert into HR.MED (MED_ID,MED_NAME,MED_MAIN_INGREDIENT,MED_GROUP,MED_DISEASE) values (119,'오구멘틴정','클라불란산칼륨','음성균제','기관지염');
--------------------------------------------------------
--  DDL for Index SYS_C007470
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C007470" ON "HR"."MED" ("MED_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table MED
--------------------------------------------------------

  ALTER TABLE "HR"."MED" MODIFY ("MED_MAIN_INGREDIENT" NOT NULL ENABLE);
  ALTER TABLE "HR"."MED" MODIFY ("MED_NAME" NOT NULL ENABLE);
  ALTER TABLE "HR"."MED" ADD PRIMARY KEY ("MED_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
