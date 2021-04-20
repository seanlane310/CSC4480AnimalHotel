/********************************************************************************/
/*																				*/
/*	Lauren Scalice Maizie Thurber-Wells Sean Lane				                */
/*																				*/
/*  Animal Hotel Schema													        */
/*																				*/
/*	CSC	4480_001		                                                        */
/*																				*/
/********************************************************************************/

--DROP TABLE OWNER CASCADE CONSTRAINTS;


--DROP SEQUENCE seqOID; PID, SECNO, SID


--CREATE SEQUENCE seqOID INCREMENT BY 1 START WITH 1;

CREATE TABLE SECTORS (
  Sector_no int,
  Name varchar2,
  Available_Cap int,
  Ext_Num int,
  Animal_Type varchar2
);

CREATE TABLE PET (
  ID int,
  Name varchar2,
  Animal_Type varchar2,
  Breed varchar2,
  Age int,
  Temperment varchar2,
  Owner_ID int
);

CREATE TABLE OWNER (
  ID int,
  First_Name varchar2,
  Last_Name varchar2,
  Email varchar2,
  Phone_Number varchar2
);

CREATE TABLE PET_CONDITIONS (
  PetID int,
  Condition varchar2
);

CREATE TABLE WORKS_AT (
  Essn int,
  Sect_no int
);

CREATE TABLE BOOKED (
  Pet_ID int,
  Expected_Arrival_Date date,
  Sector_Num int,
  Expected_Departure_Date date
);

CREATE TABLE EMPLOYEE (
  Ssn int,
  F_Name varchar2,
  L_Name varchar2,
  Dob date,
  Start_Date date,
  Hours int,
  Pay_Rate int
);

CREATE TABLE PES (
  PID int,
  Em_Ssn int,
  ServiceID int
);

CREATE TABLE SERVICES (
  Service_ID int,
  Service_Type varchar2,
  Date date,
  Paid_For int
);

