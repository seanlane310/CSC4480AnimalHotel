/********************************************************************************/
/*																				*/
/*	Lauren Scalice Maizie Thurber-Wells Sean Lane				                */
/*																				*/
/*  Animal Hotel Schema													        */
/*																				*/
/*	CSC	4480_001		                                                        */
/*																				*/
/********************************************************************************/



--Booking a service for new client

INSERT INTO OWNER VALUES(10, 'Peter', 'Donohue', 'NOVAPREZ@villanova.edu', '609-402-1000');
INSERT INTO PET VALUES(13, 'Nova', 'Dog', 'Golden Retriever', 5, 'Calm', 10);
INSERT INTO PET_CONDITIONS VALUES(13, 'None');
INSERT INTO SERVICES VALUES(15, 'Walk', '27-APR-21', 1);
INSERT INTO PES VALUES(10, '136943886', 15); 

SELECT SECTOR_NO FROM SECTORS WHERE SECTORS.NAME = 'Dog Daycare';
INSERT INTO BOOKED VALUES(10, '26-APR-21', 1, '28-APR-21');



/********************************************************************************/
--Booking a service for exsisting client

SELECT PET.ID, PET.NAME, PET.ANIMAL_TYPE, SECTORS.SECTOR_NO
FROM PET, OWNER, SECTORS
WHERE owner.phone_number = '609-703-7777' AND pet.owner_id = owner.id AND sectors.animal_type = pet.animal_type ;
 
INSERT INTO SERVICES VALUES(16, 'Bath', '01-MAY-21', 0);
INSERT INTO PES VALUES(1, '136943886', 16); 
INSERT INTO BOOKED VALUES (1, '01-MAY-21', 1, '01-MAY-21');



/********************************************************************************/
--Picking up your pet

SELECT OWNER.FIRST_NAME, OWNER.LAST_NAME,  PET.NAME, PET.ID, PET.ANIMAL_TYPE
FROM PET, OWNER
WHERE owner.phone_number = '609-896-7464' AND pet.owner_id = owner.id;

UPDATE SERVICES
SET paid_for = 1
WHERE SERVICES.service_id = (SELECT pes.serviceid FROM PES WHERE PES.PID = 5);

UPDATE BOOKED
SET expected_arrival_date = '26-APR-21'
WHERE BOOKED.PET_ID = 5;



/********************************************************************************/
--Hiring an employee 

INSERT INTO EMPLOYEE VALUES('987650321','John', 'Smith', '11-OCT-1995', '13-MAR-2019', 27, 18);
INSERT INTO WORKS_AT VALUES('987650321', 3);



/********************************************************************************/
--Which pets are currently in Dog Daycare?

--Nested Query 
SELECT PET.ID, PET.NAME, PET.BREED
FROM PET
WHERE PET.ANIMAL_TYPE = 'Dog' AND PET.ID IN 
    (SELECT PET_ID
    FROM BOOKED
    WHERE '26-apr-21' < booked.expected_departure_date
    AND booked.expected_arrival_date < '26-apr-21');
    
--Join Query 
SELECT PET.ID, PET.NAME, PET.BREED
FROM PET JOIN BOOKED on PET.ID = BOOKED.PET_ID
WHERE '26-apr-21' < booked.expected_departure_date
    AND booked.expected_arrival_date < '26-apr-21'
    AND PET.ANIMAL_TYPE = 'Dog';



/********************************************************************************/
--What are the names of the employees who have worked here more than 7 years?

SELECT EMPLOYEE.F_NAME, EMPLOYEE.L_NAME, EMPLOYEE.SSN
FROM EMPLOYEE
WHERE '26-apr-21' > (EMPLOYEE.START_DATE + (7 * 365))
ORDER BY EMPLOYEE.L_NAME;



/********************************************************************************/
--What are the total number of hours worked this week by everyone with an 'a' in their first name?
SELECT SUM(HOURS)
FROM EMPLOYEE
WHERE F_NAME LIKE '%a%';

