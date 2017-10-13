--1.
CREATE TABLESPACE COURSES DATAFILE
'courses1.dbf' SIZE 50M
EXTENT MANAGEMENT LOCAL 
SEGMENT SPACE MANAGEMENT AUTO;

--2.
CREATE PROFILE administrativo LIMIT
    IDLE_TIME              25
    FAILED_LOGIN_ATTEMPTS  4
    SESSIONS_PER_USER      1;

--3.    
CREATE USER sadiso IDENTIFIED BY 123456
DEFAULT TABLESPACE COURSES
QUOTA 30M ON COURSES
PROFILE administrativo;

--4. 
grant DBA to sadiso

create sequence answer_seq
INCREMENT BY 10
START WITH 500;

--------------------------------------------------------
-- Archivo creado  - viernes-octubre-13-2017   
--------------------------------------------------------
DROP TABLE "ANSWERS" cascade constraints;
DROP TABLE "ATTENDANCE" cascade constraints;
DROP TABLE "COURSES" cascade constraints;
DROP TABLE "STUDENTS" cascade constraints;
DROP SEQUENCE "ANSWER_SEQ";
--------------------------------------------------------
--  DDL for Sequence ANSWER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ANSWER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 10 START WITH 500 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ANSWERS
--------------------------------------------------------

  CREATE TABLE "ANSWERS" 
   (	"ID" NUMBER(*,0), 
	"NUMBER_OF_QUESTION" VARCHAR2(255), 
	"ANSWER" VARCHAR2(255)
   ) ;
--------------------------------------------------------
--  DDL for Table ATTENDANCE
--------------------------------------------------------

  CREATE TABLE "ATTENDANCE" 
   (	"ID" NUMBER(*,0), 
	"STUDENT_ID" NUMBER(*,0), 
	"COURSE_ID" NUMBER(*,0), 
	"ATTENDANCE_DATE" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table COURSES
--------------------------------------------------------

  CREATE TABLE "COURSES" 
   (	"ID" NUMBER(*,0), 
	"NAME" VARCHAR2(255), 
	"CODE" VARCHAR2(255), 
	"DATE_START" DATE, 
	"DATE_END" DATE
   ) ;
--------------------------------------------------------
--  DDL for Table STUDENTS
--------------------------------------------------------

  CREATE TABLE "STUDENTS" 
   (	"ID" NUMBER(*,0), 
	"FIRST_NAME" VARCHAR2(255), 
	"LAST_NAME" VARCHAR2(255), 
	"DATE_OF_BIRTH" DATE, 
	"CITY" VARCHAR2(255), 
	"ADDRESS" VARCHAR2(255)
   ) ;
REM INSERTING into ANSWERS
SET DEFINE OFF;
REM INSERTING into ATTENDANCE
SET DEFINE OFF;
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1000','131','1',to_date('02/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1001','195','1',to_date('02/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1002','136','1',to_date('02/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1003','153','1',to_date('02/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1004','175','1',to_date('02/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1005','163','1',to_date('02/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1006','113','1',to_date('02/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1007','141','1',to_date('02/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1008','172','1',to_date('02/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1009','177','1',to_date('02/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1010','102','1',to_date('02/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1011','162','1',to_date('02/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1012','152','1',to_date('02/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1013','165','1',to_date('02/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1014','136','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1015','192','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1016','116','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1017','180','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1018','101','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1019','182','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1020','195','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1021','155','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1022','197','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1023','119','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1024','137','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1025','145','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1026','125','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1027','115','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1028','107','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1029','178','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1030','103','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1031','179','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1032','106','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1033','152','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1034','105','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1035','112','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1036','163','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1037','188','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1038','110','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1039','169','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1040','156','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1041','186','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1042','129','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1043','153','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1044','185','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1046','166','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1047','167','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1048','144','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1049','113','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1050','107','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1051','158','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1052','168','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1054','109','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1055','172','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1056','176','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1057','191','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1058','126','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1060','193','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1062','122','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1063','123','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1064','135','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1065','160','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1066','194','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1067','108','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1068','138','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1069','100','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1071','132','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1072','177','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1073','102','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1074','154','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1075','121','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1076','139','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1077','133','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1078','181','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1079','130','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1080','148','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1081','174','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1082','189','3',to_date('03/10/17','DD/MM/RR'));
Insert into ATTENDANCE (ID,STUDENT_ID,COURSE_ID,ATTENDANCE_DATE) values ('1083','131','3',to_date('03/10/17','DD/MM/RR'));
REM INSERTING into COURSES
SET DEFINE OFF;
Insert into COURSES (ID,NAME,CODE,DATE_START,DATE_END) values ('1','Business and Computing','2AC29411-F8D1-E990-FBA9-60C80437748B',to_date('06/08/16','DD/MM/RR'),to_date('10/12/16','DD/MM/RR'));
Insert into COURSES (ID,NAME,CODE,DATE_START,DATE_END) values ('2','Computer Science','53539BA7-FD0E-AE1E-4B66-92DB6518F46C',to_date('01/08/16','DD/MM/RR'),to_date('09/12/16','DD/MM/RR'));
Insert into COURSES (ID,NAME,CODE,DATE_START,DATE_END) values ('3','Chemistry','1ACE2F72-CDB7-DB26-B9E2-909E85671B95',to_date('07/08/16','DD/MM/RR'),to_date('07/12/16','DD/MM/RR'));
Insert into COURSES (ID,NAME,CODE,DATE_START,DATE_END) values ('4','History','758EECA4-6530-A6BD-2E78-B5F457A618F8',to_date('06/08/16','DD/MM/RR'),to_date('07/12/16','DD/MM/RR'));
Insert into COURSES (ID,NAME,CODE,DATE_START,DATE_END) values ('5','Zoology','EAB012BA-FE15-285F-1EAB-F09C4F6B613A',to_date('06/08/16','DD/MM/RR'),to_date('09/12/16','DD/MM/RR'));
REM INSERTING into STUDENTS
SET DEFINE OFF;
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('100','Isaac','Fox',to_date('12/12/92','DD/MM/RR'),'Sluizen','Ap #802-3431 Mauris Road');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('101','Porter','Simmons',to_date('28/11/90','DD/MM/RR'),'Evansville','P.O. Box 217, 6434 Facilisis Street');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('102','Quinlan','Green',to_date('12/10/92','DD/MM/RR'),'Redcliffe','Ap #364-9369 Ullamcorper Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('103','Brooke','Hawkins',to_date('13/01/91','DD/MM/RR'),'Sefro','335-6554 Per Road');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('104','Aubrey','Maynard',to_date('19/05/90','DD/MM/RR'),'Maranello','2385 Cursus St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('105','Aurelia','Underwood',to_date('11/06/91','DD/MM/RR'),'Rae-Edzo','685-3703 Semper St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('106','Wesley','Jordan',to_date('06/09/90','DD/MM/RR'),'Robelmont','P.O. Box 923, 1672 Auctor Street');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('107','Lance','Combs',to_date('29/04/91','DD/MM/RR'),'Petit-Thier','8731 Vel Street');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('108','Reed','Witt',to_date('20/02/92','DD/MM/RR'),'Calle Larga','P.O. Box 209, 6821 Sagittis Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('109','Connor','Lindsey',to_date('04/08/92','DD/MM/RR'),'Lustenau','Ap #949-9952 Pretium Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('110','Uriah','Hooper',to_date('05/07/92','DD/MM/RR'),'Akron','3659 Donec St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('111','Beau','Payne',to_date('04/01/91','DD/MM/RR'),'Collecchio','Ap #770-7928 Pede, St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('112','Wing','Wade',to_date('12/07/91','DD/MM/RR'),'Logan City','Ap #581-219 Eu Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('113','Arthur','Mcintosh',to_date('07/06/91','DD/MM/RR'),'Vertou','P.O. Box 967, 3351 Vitae Av.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('114','John','Kent',to_date('24/11/92','DD/MM/RR'),'Glenrothes','P.O. Box 306, 114 Enim Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('115','Price','Wolf',to_date('10/04/92','DD/MM/RR'),'Madison','793-8987 Et St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('116','Byron','Deleon',to_date('07/08/92','DD/MM/RR'),'Asansol','707-9963 Erat St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('117','Gabriel','Carroll',to_date('05/05/91','DD/MM/RR'),'Baidyabati','853-102 Habitant Avenue');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('118','Cassidy','Waller',to_date('28/03/92','DD/MM/RR'),'Kington','Ap #785-2582 Mus. St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('119','Carissa','Rocha',to_date('27/11/93','DD/MM/RR'),'Buguma','P.O. Box 405, 9570 Bibendum. Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('120','Quinn','Lucas',to_date('13/06/92','DD/MM/RR'),'Thuin','Ap #140-9079 Curae; St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('121','Jaquelyn','Jones',to_date('20/09/90','DD/MM/RR'),'Stockport','1132 Tellus Avenue');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('122','Garrett','Finch',to_date('23/10/91','DD/MM/RR'),'Herselt','P.O. Box 160, 4325 Nullam Street');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('123','Ignatius','Rivera',to_date('11/04/91','DD/MM/RR'),'Saint Paul','Ap #786-5817 Dis St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('124','Charles','Faulkner',to_date('15/07/92','DD/MM/RR'),'Borgomasino','2316 Tortor Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('125','Micah','Hewitt',to_date('28/04/93','DD/MM/RR'),'Seborga','3375 Eu St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('126','Samuel','Aguirre',to_date('18/01/93','DD/MM/RR'),'Villa Agnedo','873-1601 A, Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('127','Duncan','Cabrera',to_date('13/10/92','DD/MM/RR'),'Umbertide','710-2341 Montes, Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('128','Meredith','Guthrie',to_date('15/05/93','DD/MM/RR'),'Meldert','6679 Tempus, Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('129','Gail','Prince',to_date('17/03/91','DD/MM/RR'),'Zaffelare','786-660 Lobortis Street');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('130','Brock','Suarez',to_date('26/04/90','DD/MM/RR'),'Timaru','823-5460 Facilisis Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('131','Caldwell','Hood',to_date('09/07/93','DD/MM/RR'),'Berwick','P.O. Box 850, 168 At Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('132','Alfonso','Cash',to_date('14/11/92','DD/MM/RR'),'Wetzlar','Ap #363-3354 Nibh. Street');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('133','Axel','Clarke',to_date('09/02/91','DD/MM/RR'),'Madurai','P.O. Box 583, 2539 Dolor. Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('134','Neville','Joyner',to_date('29/04/90','DD/MM/RR'),'Millport','P.O. Box 720, 9376 Egestas Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('135','Dara','Larson',to_date('30/01/93','DD/MM/RR'),'Hofors','P.O. Box 782, 5948 Donec Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('136','Bianca','Hubbard',to_date('19/11/90','DD/MM/RR'),'Leipzig','735-4429 Ac St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('137','Signe','Weeks',to_date('12/05/93','DD/MM/RR'),'Metairie','183-914 Nibh Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('138','Buffy','Strong',to_date('25/07/92','DD/MM/RR'),'Neuwied','905-3128 Amet Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('139','Whoopi','Tucker',to_date('20/09/92','DD/MM/RR'),'Dégelis','Ap #274-9108 Nec, St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('140','Porter','Armstrong',to_date('27/04/90','DD/MM/RR'),'Berwick','8579 Et Av.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('141','Signe','Burgess',to_date('23/01/93','DD/MM/RR'),'Butte','6294 Dui Street');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('142','Lael','Stone',to_date('22/02/90','DD/MM/RR'),'Surrey','572-5758 Luctus Avenue');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('143','Lael','Jensen',to_date('14/09/91','DD/MM/RR'),'Uluberia','756-3899 Nunc Avenue');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('144','Boris','Evans',to_date('10/04/93','DD/MM/RR'),'Avesta','704-1944 Primis Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('145','Hermione','Bryan',to_date('17/08/92','DD/MM/RR'),'Rotorua','Ap #916-8805 Dolor. Street');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('146','Venus','Cervantes',to_date('24/04/91','DD/MM/RR'),'Strathcona County','P.O. Box 260, 9351 Rutrum Street');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('147','Gretchen','Leon',to_date('19/07/90','DD/MM/RR'),'Fraser Lake','Ap #182-5071 Et Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('148','Justine','Woodard',to_date('09/08/93','DD/MM/RR'),'Qu�bec City','P.O. Box 951, 8113 Sapien, Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('149','Henry','Barber',to_date('14/05/92','DD/MM/RR'),'Melsele','251-1046 Volutpat. St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('150','Amela','Wilder',to_date('01/06/90','DD/MM/RR'),'Savannah','7717 Lorem Av.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('151','Summer','Andrews',to_date('04/12/90','DD/MM/RR'),'Nampa','8787 Cursus Avenue');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('152','Dorian','Griffin',to_date('23/10/92','DD/MM/RR'),'Bottrop','P.O. Box 168, 2310 Malesuada Street');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('153','Sean','Schultz',to_date('08/03/93','DD/MM/RR'),'Roksem','P.O. Box 585, 6367 Cras Street');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('154','Lucy','Scott',to_date('17/08/92','DD/MM/RR'),'Loncoche','116 Praesent Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('155','Germaine','Merritt',to_date('17/04/93','DD/MM/RR'),'Bacabal','2693 Eu, Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('156','Christian','Duncan',to_date('11/05/91','DD/MM/RR'),'Idaho Falls','493-5135 Quisque St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('157','Travis','Petty',to_date('29/03/90','DD/MM/RR'),'Vorst','233 Donec St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('158','Barrett','Banks',to_date('25/02/90','DD/MM/RR'),'Monte San Pietrangeli','P.O. Box 740, 107 Urna Road');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('159','Jaime','Hall',to_date('29/08/92','DD/MM/RR'),'Tampa','Ap #598-9474 Sit Av.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('160','Kenneth','Anderson',to_date('03/12/92','DD/MM/RR'),'Gasteiz','P.O. Box 673, 8814 Lorem Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('161','Holly','Stuart',to_date('10/05/90','DD/MM/RR'),'Lampa','6585 Dolor Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('162','Ori','Rivers',to_date('15/04/93','DD/MM/RR'),'Oberhausen','P.O. Box 181, 8644 Duis Av.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('163','Latifah','Elliott',to_date('20/02/93','DD/MM/RR'),'Lesve','P.O. Box 547, 3439 Fusce Road');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('164','Priscilla','Cervantes',to_date('21/07/90','DD/MM/RR'),'Athus','P.O. Box 933, 1679 Arcu. Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('165','Keelie','Mendoza',to_date('30/05/90','DD/MM/RR'),'Gonars','7686 Aliquet Av.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('166','Evan','Carroll',to_date('17/10/91','DD/MM/RR'),'Lerwick','Ap #801-7065 Pede. Av.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('167','Galena','Cooper',to_date('17/09/93','DD/MM/RR'),'Darmstadt','Ap #443-8800 Neque. Road');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('168','Kirestin','Oneal',to_date('15/04/92','DD/MM/RR'),'Macchia Valfortore','Ap #823-1991 A Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('169','Calvin','Tate',to_date('27/10/92','DD/MM/RR'),'Gorinchem','158-8550 Ac Road');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('170','Brody','Lara',to_date('11/11/93','DD/MM/RR'),'Melle','644-3959 In St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('171','Doris','Donaldson',to_date('04/11/93','DD/MM/RR'),'Şereflikoçhisar','Ap #542-8306 Sit Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('172','August','Reyes',to_date('08/10/91','DD/MM/RR'),'Kerkhove','7111 In Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('173','Grace','Vincent',to_date('02/09/91','DD/MM/RR'),'Coleville Lake','679-3159 Mollis. St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('174','Xanthus','Hicks',to_date('21/05/91','DD/MM/RR'),'Esslingen','838-8666 Fringilla Avenue');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('175','Karina','Reilly',to_date('30/11/90','DD/MM/RR'),'Ilbono','Ap #141-6162 Maecenas Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('176','Lenore','Franco',to_date('08/01/92','DD/MM/RR'),'Romeral','736-6773 Aliquet Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('177','Ulric','Sheppard',to_date('13/07/93','DD/MM/RR'),'Fort Simpson','P.O. Box 155, 9867 Purus. Av.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('178','Jacob','Patrick',to_date('11/09/93','DD/MM/RR'),'Spremberg','417-264 Quisque St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('179','David','Huber',to_date('29/08/90','DD/MM/RR'),'Valenciennes','643-9216 Lorem Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('180','Giacomo','Glenn',to_date('04/04/92','DD/MM/RR'),'Burnaby','Ap #269-453 Adipiscing. Av.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('181','Lester','Carroll',to_date('20/04/93','DD/MM/RR'),'Hof','P.O. Box 254, 3005 Pede Street');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('182','Selma','Palmer',to_date('15/08/90','DD/MM/RR'),'Güstrow','773-3375 Mauris Av.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('183','Jenna','Travis',to_date('30/12/91','DD/MM/RR'),'Mulhouse','Ap #694-7114 Non St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('184','Berk','Gill',to_date('28/11/92','DD/MM/RR'),'Graz','Ap #386-9886 Orci St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('185','Ina','Mendez',to_date('11/09/92','DD/MM/RR'),'Peñaflor','7258 Proin Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('186','Mona','King',to_date('04/09/91','DD/MM/RR'),'Walhain','833-2716 Aliquet St.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('187','Trevor','Beach',to_date('28/04/91','DD/MM/RR'),'Zonhoven','P.O. Box 605, 2296 Nam Av.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('188','Brennan','Jones',to_date('16/08/91','DD/MM/RR'),'Patan','379-6523 A, Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('189','Edward','Bright',to_date('25/02/92','DD/MM/RR'),'Whitehorse','8635 Consequat Av.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('190','Kadeem','Munoz',to_date('04/05/90','DD/MM/RR'),'Pumanque','760-1877 Tellus. Av.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('191','Uriah','Cabrera',to_date('31/12/92','DD/MM/RR'),'Davenport','296 In Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('192','Ethan','Matthews',to_date('16/05/93','DD/MM/RR'),'Nakusp','8673 Vestibulum. Ave');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('193','Gage','Abbott',to_date('31/07/93','DD/MM/RR'),'Quirihue','779-4092 Mauris. Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('194','Tanek','Kramer',to_date('01/10/93','DD/MM/RR'),'Vidisha','8019 Ornare Rd.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('195','Reese','Farrell',to_date('13/01/93','DD/MM/RR'),'La Salle','295 Sapien Road');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('196','Hayes','Bennett',to_date('15/06/90','DD/MM/RR'),'Philadelphia','P.O. Box 425, 4814 Egestas Av.');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('197','Renee','Cannon',to_date('16/09/91','DD/MM/RR'),'Olinda','P.O. Box 373, 195 Urna. Avenue');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('198','Tamekah','Bridges',to_date('13/03/93','DD/MM/RR'),'Moorsel','P.O. Box 560, 9986 Non Road');
Insert into STUDENTS (ID,FIRST_NAME,LAST_NAME,DATE_OF_BIRTH,CITY,ADDRESS) values ('199','Fleur','Mendez',to_date('13/02/91','DD/MM/RR'),'Lavacherie','411-8661 Nisl. Ave');
--------------------------------------------------------
--  DDL for Index PK_ID_ANSWERS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ID_ANSWERS" ON "ANSWERS" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_ID_ATTENDANCE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ID_ATTENDANCE" ON "ATTENDANCE" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_ID_COURSES
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ID_COURSES" ON "COURSES" ("ID") 
  ;
--------------------------------------------------------
--  DDL for Index PK_ID_STUDENTS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ID_STUDENTS" ON "STUDENTS" ("ID") 
  ;
--------------------------------------------------------
--  Constraints for Table ANSWERS
--------------------------------------------------------

  ALTER TABLE "ANSWERS" ADD CONSTRAINT "PK_ID_ANSWERS" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ANSWERS" MODIFY ("ANSWER" NOT NULL ENABLE);
  ALTER TABLE "ANSWERS" MODIFY ("NUMBER_OF_QUESTION" NOT NULL ENABLE);
  ALTER TABLE "ANSWERS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ATTENDANCE
--------------------------------------------------------

  ALTER TABLE "ATTENDANCE" ADD CONSTRAINT "PK_ID_ATTENDANCE" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "ATTENDANCE" MODIFY ("ATTENDANCE_DATE" NOT NULL ENABLE);
  ALTER TABLE "ATTENDANCE" MODIFY ("COURSE_ID" NOT NULL ENABLE);
  ALTER TABLE "ATTENDANCE" MODIFY ("STUDENT_ID" NOT NULL ENABLE);
  ALTER TABLE "ATTENDANCE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COURSES
--------------------------------------------------------

  ALTER TABLE "COURSES" ADD CONSTRAINT "PK_ID_COURSES" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "COURSES" MODIFY ("DATE_END" NOT NULL ENABLE);
  ALTER TABLE "COURSES" MODIFY ("DATE_START" NOT NULL ENABLE);
  ALTER TABLE "COURSES" MODIFY ("CODE" NOT NULL ENABLE);
  ALTER TABLE "COURSES" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "COURSES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STUDENTS
--------------------------------------------------------

  ALTER TABLE "STUDENTS" ADD CONSTRAINT "PK_ID_STUDENTS" PRIMARY KEY ("ID") ENABLE;
  ALTER TABLE "STUDENTS" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "STUDENTS" MODIFY ("CITY" NOT NULL ENABLE);
  ALTER TABLE "STUDENTS" MODIFY ("DATE_OF_BIRTH" NOT NULL ENABLE);
  ALTER TABLE "STUDENTS" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "STUDENTS" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "STUDENTS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ATTENDANCE
--------------------------------------------------------

  ALTER TABLE "ATTENDANCE" ADD CONSTRAINT "FK_COURSES_ID" FOREIGN KEY ("COURSE_ID")
	  REFERENCES "COURSES" ("ID") ENABLE;
  ALTER TABLE "ATTENDANCE" ADD CONSTRAINT "FK_STUDENTS_ID" FOREIGN KEY ("STUDENT_ID")
	  REFERENCES "STUDENTS" ("ID") ENABLE;

