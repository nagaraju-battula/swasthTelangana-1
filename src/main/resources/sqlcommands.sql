CREATE DATABASE demo;

use demo;

DROP TABLE T_PATIENT;


CREATE TABLE T_PATIENT
( F_PATIENT_NAME VARCHAR(100),
  F_PATIENT_ID INT,
  F_CREATED_TIMESTAMP DATETIME,
  F_AGE INT,
  F_TXN_ID INT,
  F_GENDER VARCHAR(100),
  F_CREATED_BY VARCHAR(100),
  F_DOWNLOAD_PATH     varchar(1000)
  F_AADHAR_NO         varchar(15)  );
  F_UPDATED_TIMESTAMP date
);

DROP TABLE T_CLINIC_DETAILS;

CREATE TABLE T_CLINIC_DETAILS
(
  F_CLINIC_OWNER_NAME VARCHAR(100),
  F_TYPE     VARCHAR(500),
  F_ADDRESS   VARCHAR(1000),
  F_DISTRICT  VARCHAR(50),
  F_STATE     VARCHAR(40),
  F_PINCODE       INT,
  F_CONTACT_NO    INT,
  F_CLINIC_NAME VARCHAR(500),
  F_PATIENT_ID INT
);

DROP TABLE T_FORM;

CREATE TABLE T_FORM
(
	  F_NO_OF_CHILDREN INT,
	  F_GUARDIAN_NAME VARCHAR(300),
	  F_PATIENT_ADDRESS VARCHAR(400),
	  F_REFERRAL_ADDRESS VARCHAR(400),
	  F_MENSTRUAL_PERIOD INT,
	  F_MEDICAL_DISEASE VARCHAR(400),
	  F_PARENTAL_DIAGNOSIS VARCHAR(400),
	  F_GYNA_DETAILS VARCHAR(500),
	  F_CREATED_TIMESTAMP DATE,
	  F_NO_OF_MALE_KIDS INT,
	  F_NO_OF_FEMALE_KIDS INT,
	  F_ADDRESS_ID INT,
	  F_INVASIVE_ID INT,
	  F_NON_INVASIVE_ID INT,
	  F_CLINIC_ID INT,
	  F_PATIENT_ID INT
  );

DROP TABLE T_NON_INVASIVE_PROCEDURES;

CREATE TABLE T_NON_INVASIVE_PROCEDURES
  (
   F_NON_INVASIVE_ID INT PRIMARY KEY,
   F_FORM_ID INT,
   F_PATIENT_ID INT,
   F_DOCTOR_NAME VARCHAR(100),
   F_DIAGNOSIS_INDICATION varchar(200),
   F_CARRIED_NON_INVASIVE_PROCEDURE  VARCHAR(200),
   F_DECLARATION_DATE   DATE,
   F_PROCEDURE_CARRIED_DATE DATE,
   F_PROCEDURE_RESULT VARCHAR(100),
   F_CONVEY_ID INT,
   F_MTP_INDICATION VARCHAR(100),
   F_DATE DATE,
   F_PLACE VARCHAR(100),
   F_SELECTED_DIAGNOSE  varchar(500)
  );

DROP TABLE T_INVASIVE_PROCEDURES;

CREATE TABLE T_INVASIVE_PROCEDURES
(
	F_DOCTOR_NAME                varchar(100),
	F_DIAGNOSIS_BASICS           varchar(200),
	F_DIAGNOSIS_INDICATION       varchar(200),
	F_ADVANCED_MATERNAL_AGE      varchar(100),
	F_GENETIC_DISEASE            varchar(200),
	F_CONTEST_DATE               date,
	F_CARRIED_INVASIVE_PROCEDURE varchar(200),
	F_COMPILICATION              varchar(500),
	F_ADDITIONAL_TEST            varchar(1000),
	F_PROCEDURE_RESULT           varchar(100),
	F_PROCEDURE_CARRIED_DATE     date,
	F_MTP_INDICATION             varchar(100),
	F_PATIENT_ID                INT PRIMARY KEY
);

DROP TABLE T_DOCTOR_DECLARATION;

CREATE TABLE T_DOCTOR_DECLARATION
(
  F_DECLARATION_ID INT PRIMARY KEY,
  F_PATIENT_ID INT,
  F_PATIENT_NAME   varchar(500),
  F_DOCTOR_NAME VARCHAR(100),
  F_DATE DATE,
  F_PLACE VARCHAR(100)
);

DROP TABLE T_USER_DETAILS;


CREATE TABLE T_USER_DETAILS
(
	F_LOGIN_ID      varchar(20),
	F_PASSWORD      varchar(50),
	F_MOBILE_NUMBER varchar(11),
	F_DISPLAY_NAME  varchar(20),
	F_ROLE          varchar(15)
);

INSERT INTO T_USER_DETAILS (F_LOGIN_ID,F_PASSWORD,F_MOBILE_NUMBER,F_DISPLAY_NAME,F_ROLE)
VALUES('Administrator','donotchange@snlabs','8978322229','Sekhar.Karri','admin');

INSERT INTO T_USER_DETAILS (F_LOGIN_ID,F_PASSWORD,F_MOBILE_NUMBER,F_DISPLAY_NAME,F_ROLE)
VALUES('sekhar','123','8978322229','Sekhar.Karri','admin');


COMMIT;
