create database bms;
use bms;
CREATE TABLE MEMBER (
    MEMBER_ID 		VARCHAR(20) PRIMARY KEY,
    PASSWD 			VARCHAR(200) ,
	MEMBER_NM 		VARCHAR(50)  ,
	SEX 			CHAR(1)  	 ,
	BIRTH_DT 		CHAR(10)     , 
	HP 				VARCHAR(13)  ,
	EMAIL 			VARCHAR(30) ,
    JOIN_DT 		TIMESTAMP,
    POINT			INT

);