/********************************************************************************/
/*																				*/
/*	Lauren Scalice Maizie Thurber-Wells Sean Lane				                */
/*																				*/
/*  Animal Hotel Schema													        */
/*																				*/
/*	CSC	4480_001		                                                        */
/*																				*/
/********************************************************************************/

DROP TABLE SECTORS CASCADE CONSTRAINTS;
DROP TABLE PET CASCADE CONSTRAINTS;
DROP TABLE OWNER CASCADE CONSTRAINTS;
DROP TABLE PET_CONDITIONS CASCADE CONSTRAINTS;
DROP TABLE WORKS_AT CASCADE CONSTRAINTS;
DROP TABLE BOOKED CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE PES CASCADE CONSTRAINTS;
DROP TABLE SERVICES CASCADE CONSTRAINTS;

DROP SEQUENCE seqSECNO;
DROP SEQUENCE seqOID;
DROP SEQUENCE seqPID;
DROP SEQUENCE seqSID;

-- Sectors Table Code
CREATE TABLE SECTORS (
  Sector_no     Int             NOT NULL,
  Name          VarChar2(20)    NOT NULL,
  Max_Cap       Int             NOT NULL,
  Ext_Num       Int             NOT NULL,
  Animal_Type   VarChar2(20)    NOT NULL,
  CONSTRAINT	SECTOR_PK       PRIMARY KEY(Sector_no)
);

CREATE SEQUENCE seqSECNO INCREMENT BY 1 START WITH 1;

-- Owner Table Code
CREATE TABLE OWNER (
  ID            Int             NOT NULL,
  First_Name    VarChar2(20)    NOT NULL,
  Last_Name     VarChar2(20)    NOT NULL,
  Email         VarChar2(320)   NOT NULL,
  Phone_Number  VarChar2(15)    NOT NULL,
  CONSTRAINT	OWNER_PK        PRIMARY KEY(ID)
);

CREATE SEQUENCE seqOID INCREMENT BY 1 START WITH 1;

-- Pet Table Code
CREATE TABLE PET (
  ID            Int             NOT NULL,
  Name          VarChar2(20)    NOT NULL,
  Animal_Type   VarChar2(20)    NOT NULL,
  Breed         VarChar2(25),
  Age           Int,
  Temperment    VarChar2(40)    NOT NULL,
  Owner_ID      Int             NOT NULL,
  CONSTRAINT	PET_PK          PRIMARY KEY(ID),
  CONSTRAINT	PET_OWNER_FK	FOREIGN KEY (Owner_ID) REFERENCES OWNER(ID) 
);

CREATE SEQUENCE seqPID INCREMENT BY 1 START WITH 1;

-- Employee Table Code
CREATE TABLE EMPLOYEE (
  Ssn           char(9)         NOT NULL,
  F_Name        VarChar2(15)    NOT NULL,
  L_Name        VarChar2(15)    NOT NULL,
  Dob           Date            NOT NULL,
  Start_Date    Date            NOT NULL,
  Hours         Int             NOT NULL,
  Pay_Rate      Int             NOT NULL,
  CONSTRAINT	EMP_PK          PRIMARY KEY(Ssn)
);

-- Pet Conditions Table Code
CREATE TABLE PET_CONDITIONS (
  PetID         Int             NOT NULL,
  Condition     VarChar2(50)    NOT NULL,
  CONSTRAINT	PC_PKS          PRIMARY KEY(PetID,Condition),
  CONSTRAINT	PC_PET_FK	    FOREIGN KEY (PetID) REFERENCES PET(ID)
);

-- Works At Table Code
CREATE TABLE WORKS_AT (
  Essn          char(9)         NOT NULL,
  Sect_no       Int             NOT NULL,
  CONSTRAINT	WA_PKS          PRIMARY KEY(Essn,Sect_no),
  CONSTRAINT	WA_EMP_FK	    FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn),
  CONSTRAINT	WA_SEC_FK	    FOREIGN KEY (Sect_no) REFERENCES SECTORS(Sector_no)
);

-- Booked Table Code
CREATE TABLE BOOKED (
  Pet_ID                    Int             NOT NULL,
  Expected_Arrival_Date     Date            NOT NULL,
  Sector_Num                Int             NOT NULL,
  Expected_Departure_Date   Date            NOT NULL,
  CONSTRAINT	            BOOKED_PKS      PRIMARY KEY(Pet_ID,Expected_Arrival_Date,Sector_Num),
  CONSTRAINT	            BOOKED_PET_FK	FOREIGN KEY (Pet_ID) REFERENCES PET(ID),
  CONSTRAINT	            BOOKED_SEC_FK	FOREIGN KEY (Sector_Num) REFERENCES SECTORS(Sector_no)
);

-- Services Table Code
CREATE TABLE SERVICES (
  Service_ID        Int             NOT NULL,
  Service_Type      VarChar2(25)    NOT NULL,
  Service_Date              Date            NOT NULL,
  Paid_For          Int             NOT NULL,
  CONSTRAINT	    SERVICES_PKS    PRIMARY KEY(Service_ID)
);

CREATE SEQUENCE seqSID INCREMENT BY 1 START WITH 1;

-- PES Table Code
CREATE TABLE PES (
  PID               Int             NOT NULL,
  Em_Ssn            char(9)         NOT NULL,
  ServiceID         Int             NOT NULL,
  CONSTRAINT	    PES_PKS         PRIMARY KEY(PID, Em_Ssn, ServiceID),
  CONSTRAINT	    PES_PET_FK	    FOREIGN KEY (PID) REFERENCES PET(ID),
  CONSTRAINT	    PES_EMP_FK	    FOREIGN KEY (Em_Ssn) REFERENCES EMPLOYEE(Ssn),
  CONSTRAINT	    PES_SER_FK	    FOREIGN KEY (ServiceID) REFERENCES SERVICES(Service_ID)
);

