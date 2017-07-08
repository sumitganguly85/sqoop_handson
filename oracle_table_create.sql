-- Oracle Table Creation to work with Sqoop

CREATE TABLE BOOK_TYPES
            (TYPE_SRL	NUMBER(10)
					  ,TYPES		VARCHAR2(100)
						);
ALTER TABLE BOOK_TYPES ADD CONSTRAINT BOOK_TYPES_PK PRIMARY KEY(TYPE_SRL);

CREATE TABLE BOOKS_MASTER
			(BOOK_ID        NUMBER(20)
      ,ISBN_NO        VARCHAR2(100)
      ,VERSION_NO     VARCHAR2(50)
      ,EDITION_NO     VARCHAR2(50)
			,BOOK_NAME 		  VARCHAR2(500)
			,BOOK_TYPE_SRL  NUMBER(10)	
			,PUBLISHER_NAME VARCHAR2(500)
			,AUTHOR_NAME 	  VARCHAR2(500)
			,ISSUE_DATE		  DATE			
			,RECORD_ACTIVE	CHAR(1) DEFAULT 'Y'
			);
ALTER TABLE BOOKS_MASTER ADD CONSTRAINT BOOKS_MASTER_PK PRIMARY KEY(ISBN_NO,VERSION_NO);
ALTER TABLE BOOKS_MASTER ADD CONSTRAINT BOOKS_MASTER_UK UNIQUE KEY(BOOK_ID);

CREATE TABLE MEMBERS
       (MEMBER_ID             NUMBER(20)
       ,MEMBER_SALUTATION     VARCHAR2(20)
       ,MEMBER_FIRST_NAME     VARCHAR2(200)
       ,MEMBER_MIDDLE_NAME    VARCHAR2(200)
       ,MEMBER_LAST_NAME      VARCHAR2(200)
       ,MEMBER_GENDER         CHAR(1)
       ,MEMBER_MOBILE_NUMBER  VARCHAR2(20)
       ,MEMBER_HOME_PHONE     VARCHAR2(20)
       ,MEMBER_ADDRESS        VARCHAR2(1000)
       ,MEMBER_CREAT_DT       TIMESTAMP
       );
ALTER TABLE MEMBERS ADD CONSTRAINT MEMBERS_PK PRIMARY KEY(MEMBER_ID);

CREATE TABLE BOOKS_ISSUE_DTLS
       (ISSUE_ID       NUMBER(30)
       ,BOOK_ID        NUMBER(20)
       ,MEMBER_ID      NUMBER(20)
       ,ISSUE_DT       DATE
       ,RETURN_DT      DATE
       );
  
CREATE TABLE BOOKS_SENTIMENTAL
       (BOOK_NAME       VARCHAR2(500)
       ,READING_COUNT   NUMBER(10)
       ,FIN_YEAR        VARCHAR2(100)
       );  
       
CREATE TABLE ADDHAR_DTLS(FIRST_NAME VARCHAR2(100), LAST_NAME VARCHAR2(100), ADDHAR_NUMBER VARCHAR2(100), AGE NUMBER(3));
ALTER TABLE ADDHAR_DTLS ADD CONSTRAINT ADDHAR_DTLS_PK PRIMARY KEY (ADDHAR_NUMBER);
      
DELETE FROM BOOK_TYPES;
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (1,'General Science');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (2,'Physics');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (3,'Maths');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (4,'Chemistry');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (5,'Biology');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (6,'Drama');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (7,'Novel');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (8,'Detective');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (9,'Suspense');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (10,'Thriller');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (11,'Small Story');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (12,'Poem');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (13,'Comics');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (14,'Friction');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (15,'Bengali Literature');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (16,'English Literature');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (17,'History');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (18,'Geography');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (19,'Tourist');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (20,'Hunting');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (21,'Comedy');
INSERT INTO BOOK_TYPES (TYPE_SRL,TYPES) VALUES (22,'Miscellaneous');
COMMIT;

DELETE FROM BOOKS_MASTER;
INSERT INTO BOOKS_MASTER (BOOK_ID,ISBN_NO,VERSION_NO ,EDITION_NO,BOOK_NAME ,BOOK_TYPE_SRL  ,PUBLISHER_NAME ,AUTHOR_NAME ,ISSUE_DATE,RECORD_ACTIVE)  VALUES ('1','978-3-16-148410-0','1','1','General Science','1','Tata Mcgraw Hill','George','12-Jan-2017','Y');
INSERT INTO BOOKS_MASTER (BOOK_ID,ISBN_NO,VERSION_NO ,EDITION_NO,BOOK_NAME ,BOOK_TYPE_SRL  ,PUBLISHER_NAME ,AUTHOR_NAME ,ISSUE_DATE,RECORD_ACTIVE)  VALUES ('2','978-3-16-148410-1','1','1','World Science','1','Tata Mcgraw Hill','Kevin','13-Jan-2017','Y');
INSERT INTO BOOKS_MASTER (BOOK_ID,ISBN_NO,VERSION_NO ,EDITION_NO,BOOK_NAME ,BOOK_TYPE_SRL  ,PUBLISHER_NAME ,AUTHOR_NAME ,ISSUE_DATE,RECORD_ACTIVE)  VALUES ('3','979-3-16-148410-1','1','3','Dynamic Phisics','2','ABP Publishers','S.K.Roy','13-Mar-2017','Y');
INSERT INTO BOOKS_MASTER (BOOK_ID,ISBN_NO,VERSION_NO ,EDITION_NO,BOOK_NAME ,BOOK_TYPE_SRL  ,PUBLISHER_NAME ,AUTHOR_NAME ,ISSUE_DATE,RECORD_ACTIVE)  VALUES ('4','979-3-17-149410-1','1','1','Bhraman Samagra','19','Bartaman','S.P.Roy','23-Mar-2017','Y');
INSERT INTO BOOKS_MASTER (BOOK_ID,ISBN_NO,VERSION_NO ,EDITION_NO,BOOK_NAME ,BOOK_TYPE_SRL  ,PUBLISHER_NAME ,AUTHOR_NAME ,ISSUE_DATE,RECORD_ACTIVE)  VALUES ('5','979-3-17-158410-1','1','1','Complete Maths','3','Nag Publishers','K.C.Nag','23-Mar-2017','Y');
INSERT INTO BOOKS_MASTER (BOOK_ID,ISBN_NO,VERSION_NO ,EDITION_NO,BOOK_NAME ,BOOK_TYPE_SRL  ,PUBLISHER_NAME ,AUTHOR_NAME ,ISSUE_DATE,RECORD_ACTIVE)  VALUES ('6','979-3-18-148410-1','1','4','Handa Voda','13','ABP Publishers','N.Ganaguly','23-Jan-2017','Y');
COMMIT;

DELETE FROM MEMBERS;
INSERT INTO MEMBERS (MEMBER_ID,MEMBER_SALUTATION,MEMBER_FIRST_NAME,MEMBER_MIDDLE_NAME,MEMBER_LAST_NAME,MEMBER_GENDER,MEMBER_MOBILE_NUMBER,MEMBER_HOME_PHONE,MEMBER_ADDRESS,MEMBER_CREAT_DT)  VALUES ('1','MR.','Arghya','Pratim','Ganguly','M','9874323695','','Midnapur','03-Jul-2017');
INSERT INTO MEMBERS (MEMBER_ID,MEMBER_SALUTATION,MEMBER_FIRST_NAME,MEMBER_MIDDLE_NAME,MEMBER_LAST_NAME,MEMBER_GENDER,MEMBER_MOBILE_NUMBER,MEMBER_HOME_PHONE,MEMBER_ADDRESS,MEMBER_CREAT_DT)  VALUES ('2','MRS.','Arghya','Pratima','Ganguly','F','9874323665','','Midnapur','04-Jul-2017');
INSERT INTO MEMBERS (MEMBER_ID,MEMBER_SALUTATION,MEMBER_FIRST_NAME,MEMBER_MIDDLE_NAME,MEMBER_LAST_NAME,MEMBER_GENDER,MEMBER_MOBILE_NUMBER,MEMBER_HOME_PHONE,MEMBER_ADDRESS,MEMBER_CREAT_DT)  VALUES ('3','MRS.','Mousumi','','Pal','F','9774323695','','Howrah','02-Jul-2017');
INSERT INTO MEMBERS (MEMBER_ID,MEMBER_SALUTATION,MEMBER_FIRST_NAME,MEMBER_MIDDLE_NAME,MEMBER_LAST_NAME,MEMBER_GENDER,MEMBER_MOBILE_NUMBER,MEMBER_HOME_PHONE,MEMBER_ADDRESS,MEMBER_CREAT_DT)  VALUES ('4','MR.','Subhradip','','Patty','F','9874423695','','Nadia','03-May-2017');
INSERT INTO MEMBERS (MEMBER_ID,MEMBER_SALUTATION,MEMBER_FIRST_NAME,MEMBER_MIDDLE_NAME,MEMBER_LAST_NAME,MEMBER_GENDER,MEMBER_MOBILE_NUMBER,MEMBER_HOME_PHONE,MEMBER_ADDRESS,MEMBER_CREAT_DT)  VALUES ('5','MR.','Kaushik','','Ganguly','F','9974323695','','N.24 Parganas','03-Jun-2017');
COMMIT;

DELETE FROM BOOKS_ISSUE_DTLS;
INSERT INTO BOOKS_ISSUE_DTLS (ISSUE_ID,BOOK_ID,MEMBER_ID,ISSUE_DT,RETURN_DT)  VALUES ('1','1','1','03-Jun-2017','13-Jun-2017');
INSERT INTO BOOKS_ISSUE_DTLS (ISSUE_ID,BOOK_ID,MEMBER_ID,ISSUE_DT,RETURN_DT)  VALUES ('2','2','2','03-Apr-2017','08-Apr-2017');
INSERT INTO BOOKS_ISSUE_DTLS (ISSUE_ID,BOOK_ID,MEMBER_ID,ISSUE_DT,RETURN_DT)  VALUES ('3','3','3','03-Jul-2017','09-Jul-2017');
INSERT INTO BOOKS_ISSUE_DTLS (ISSUE_ID,BOOK_ID,MEMBER_ID,ISSUE_DT,RETURN_DT)  VALUES ('4','4','4','03-Jun-2017','15-Jun-2017');
INSERT INTO BOOKS_ISSUE_DTLS (ISSUE_ID,BOOK_ID,MEMBER_ID,ISSUE_DT,RETURN_DT)  VALUES ('5','5','5','05-Jun-2017','09-Jun-2017');
INSERT INTO BOOKS_ISSUE_DTLS (ISSUE_ID,BOOK_ID,MEMBER_ID,ISSUE_DT,RETURN_DT)  VALUES ('6','6','1','10-Jun-2017','12-Jun-2017');
COMMIT;

DELETE FROM ADDHAR_DTLS;
INSERT INTO ADDHAR_DTLS(FIRST_NAME,LAST_NAME,ADDHAR_NUMBER,AGE) VALUES ('ASIT','GANGULY','897423651456',64);
INSERT INTO ADDHAR_DTLS(FIRST_NAME,LAST_NAME,ADDHAR_NUMBER,AGE) VALUES ('SUMIT','GANGULY','897432651456',31);
INSERT INTO ADDHAR_DTLS(FIRST_NAME,LAST_NAME,ADDHAR_NUMBER,AGE) VALUES ('ASOK','GHOSH','897432581456',40);
INSERT INTO ADDHAR_DTLS(FIRST_NAME,LAST_NAME,ADDHAR_NUMBER,AGE) VALUES ('AMIT','GHOSH','987432581456',40);
COMMIT;








