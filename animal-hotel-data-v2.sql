/********************************************************************************/
/*																				*/
/*	Lauren Scalice Maizie Thurber-Wells Sean Lane				                */
/*																				*/
/*  Animal Hotel Data													        */
/*																				*/
/*	CSC	4480_001		                                                        */
/*																				*/
/********************************************************************************/

/*****   OWNER    ***************************************************************/

INSERT INTO OWNER VALUES(seqOID.nextVal,
	'Sean', 'Lane', 'slane7@villanova.edu', '609-703-7777');
INSERT INTO OWNER VALUES(seqOID.nextVal,
	'Peter', 'Donohue', 'pete@villanova.edu', '610-463-6682');
INSERT INTO OWNER VALUES(seqOID.nextVal,
	'Ebelechukwu', 'Nwafor', 'enwafor@villanova.edu', '609-123-4567');
INSERT INTO OWNER VALUES(seqOID.nextVal,
	'Jay', 'Wright', 'jwright@villanova.edu', '609-896-7464');
INSERT INTO OWNER VALUES(seqOID.nextVal,
	'Kyle', 'Lowry', 'klow7@villanova.edu', '610-727-8677');
INSERT INTO OWNER VALUES(seqOID.nextVal,
	'Akon', 'Thiam', 'akon@hotmail.net', '762-258-4288');
INSERT INTO OWNER VALUES(seqOID.nextVal,
	'Bkon', 'Badara', 'bkon@aol.com', '762-369-5399');
INSERT INTO OWNER VALUES(seqOID.nextVal,
	'Ckon', 'Damara', 'ckon@gmail.com', '762-470-6400');
INSERT INTO OWNER VALUES(seqOID.nextVal,
	'Sean', 'Kingston', 'kingston@yahoo.com', '347-328-7464');


/*****   Pet   ******************************************************************/

INSERT INTO PET VALUES(seqPID.nextVal,
	'Banx', 'Dog', 'Bordercollie', 9, 'Energetic', 1);
INSERT INTO PET VALUES(seqPID.nextVal,
	'Will', 'Cat', 'Wildcat', 4, 'Aggressive', 2);
INSERT INTO PET VALUES(seqPID.nextVal,
	'Sequel', 'Bird', 'Parrot', 1, 'Loud', 3);
INSERT INTO PET VALUES(seqPID.nextVal,
	'Diablo', 'Snake', 'Garter Snake', 2, 'Friendly', 3);
INSERT INTO PET VALUES(seqPID.nextVal,
	'Bailey', 'Dog', 'Pitbull', 5, 'Shy', 4);
INSERT INTO PET VALUES(seqPID.nextVal,
	'Tom', 'Cat', 'Domestic Shorthair Cat', 7, 'Mean', 5);
INSERT INTO PET VALUES(seqPID.nextVal,
	'Gus', 'Gerbil', 'Mongolian Gerbil', 2, 'Lazy', 6);
INSERT INTO PET VALUES(seqPID.nextVal,
	'Zeus', 'Dog', 'Pitbull', 11, 'Obedient', 7);
INSERT INTO PET VALUES(seqPID.nextVal,
	'Donald', 'Bird', 'Finch', 1, 'Quiet', 7);
INSERT INTO PET VALUES(seqPID.nextVal,
	'Daisy', 'Dog', 'Poodle', 6, 'Energetic', 8);
INSERT INTO PET VALUES(seqPID.nextVal,
	'Hissy', 'Snake', 'Ball Python', 4, 'Aggressive', 9);
INSERT INTO PET VALUES(seqPID.nextVal,
	'Fire', 'Cat', 'Tabby', 3, 'Calm', 9);




/*****   Pet Conditions  ********************************************************/

INSERT INTO PET_CONDITIONS VALUES(1,
	'None');
INSERT INTO PET_CONDITIONS VALUES(2,
	'Mute');
INSERT INTO PET_CONDITIONS VALUES(3,
	'None');
INSERT INTO PET_CONDITIONS VALUES(4,
	'None');
INSERT INTO PET_CONDITIONS VALUES(5,
	'Pregnant');
INSERT INTO PET_CONDITIONS VALUES(6,
	'None');
INSERT INTO PET_CONDITIONS VALUES(7,
	'None');
INSERT INTO PET_CONDITIONS VALUES(8,
	'None');
INSERT INTO PET_CONDITIONS VALUES(9,
	'None');
INSERT INTO PET_CONDITIONS VALUES(10,
	'None');
INSERT INTO PET_CONDITIONS VALUES(11,
	'None');
INSERT INTO PET_CONDITIONS VALUES(12,
	'Three-legged');

    
    
/*****   EMPLOYEE   *************************************************************/

INSERT INTO EMPLOYEE VALUES('123456789',
	'Samuel', 'Smith', '16-JUN-1984', '23-MAY-2002', 36, 21);
INSERT INTO EMPLOYEE VALUES('136943886',
	'Madison', 'Avery', '4-OCT-1999', '20-DEC-2016', 35, 16);
INSERT INTO EMPLOYEE VALUES('567910436',
	'Marty', 'James', '21-APR-1992', '4-JAN-2011', 15, 18);
INSERT INTO EMPLOYEE VALUES('831903356',
	'Jimmithy', 'George', '3-NOV-1959', '23-MAY-2015', 12, 16);
INSERT INTO EMPLOYEE VALUES('501256243',
	'Nikki', 'Avery', '24-AUG-2000', '29-SEP-2020', 55, 17);
INSERT INTO EMPLOYEE VALUES('987654321',
	'Torrey', 'Brown', '10-OCT-1996', '13-MAR-2015', 49, 17);




/*****   Sectors   **************************************************************/

INSERT INTO SECTORS VALUES(seqSECNO.nextVal, 'Dog Daycare', 40, 901, 'Dog');
INSERT INTO SECTORS VALUES(seqSECNO.nextVal, 'Cat Loft', 40, 801, 'Cat');
INSERT INTO SECTORS VALUES(seqSECNO.nextVal, 'Gerbil Tunnels', 40, 767, 'Gerbil');
INSERT INTO SECTORS VALUES(seqSECNO.nextVal, 'Snake Enclosement', 40, 921, 'Snake');
INSERT INTO SECTORS VALUES(seqSECNO.nextVal, 'Fly Zone', 40, 675, 'Bird');


/*****   Works_At   *************************************************************/

INSERT INTO WORKS_AT VALUES('123456789',
	1);
INSERT INTO WORKS_AT VALUES('136943886',
	2);
INSERT INTO WORKS_AT VALUES('567910436',
	5);
INSERT INTO WORKS_AT VALUES('831903356',
	4);
INSERT INTO WORKS_AT VALUES('501256243',
	2);
INSERT INTO WORKS_AT VALUES('987654321',
	3);

/*****   Booked  ****************************************************************/

INSERT INTO BOOKED VALUES(1, '4-APR-2021', 1, '25-APR-2021',0,0);
INSERT INTO BOOKED VALUES(2, '6-APR-2021', 2, '4-MAY-2021',0,0);
INSERT INTO BOOKED VALUES(3, '6-APR-2021', 5, '4-MAY-2021',0,0);
INSERT INTO BOOKED VALUES(4, '7-APR-2021', 4, '27-APR-2021',0,0);
INSERT INTO BOOKED VALUES(5, '9-APR-2021', 1, '26-APR-2021',0,0);
INSERT INTO BOOKED VALUES(6, '11-APR-2021', 2, '10-MAY-2021',0,0);
INSERT INTO BOOKED VALUES(7, '11-APR-2021', 3, '5-MAY-2021',0,0);
INSERT INTO BOOKED VALUES(8, '13-APR-2021', 1, '29-APRIL-2021',0,0);
INSERT INTO BOOKED VALUES(9, '14-APR-2021', 5, '25-APRIL-2021',0,0);
INSERT INTO BOOKED VALUES(10, '15-APR-2021', 1, '28-APRIL-2021',0,0);
INSERT INTO BOOKED VALUES(11, '16-APR-2021', 4, '22-MAY-2021',0,0);
INSERT INTO BOOKED VALUES(12, '16-APR-2021', 2, '6-MAY-2021',0,0);


/*****   SERVICES  **************************************************************/

INSERT INTO SERVICES VALUES(seqSID.nextVal, 'Walk', '10-APR-2021', 1);
INSERT INTO SERVICES VALUES(seqSID.nextVal, 'Nails', '14-APR-2021', 1);
INSERT INTO SERVICES VALUES(seqSID.nextVal, 'Bath', '17-APR-2021', 0);
INSERT INTO SERVICES VALUES(seqSID.nextVal, 'Massage', '19-APR-2021', 1);
INSERT INTO SERVICES VALUES(seqSID.nextVal, 'Walk', '19-APR-2021', 0);
INSERT INTO SERVICES VALUES(seqSID.nextVal, 'Singing Lessons', '20-APR-2021', 1);
INSERT INTO SERVICES VALUES(seqSID.nextVal, 'Bath', '20-APR-2021', 0);
INSERT INTO SERVICES VALUES(seqSID.nextVal, 'Walk', '22-APR-2021', 1);
INSERT INTO SERVICES VALUES(seqSID.nextVal, 'Feathers', '22-APR-2021', 1);
INSERT INTO SERVICES VALUES(seqSID.nextVal, 'Bath', '23-APR-2021', 0);
INSERT INTO SERVICES VALUES(seqSID.nextVal, 'Nails', '23-APR-2021', 1);
INSERT INTO SERVICES VALUES(seqSID.nextVal, 'Wheel Run', '24-APR-2021', 0);
INSERT INTO SERVICES VALUES(seqSID.nextVal, 'Therapy', '24-APR-2021', 1);
INSERT INTO SERVICES VALUES(seqSID.nextVal, 'Bath', '25-APR-2021', 0);

/*****   PES     ****************************************************************/

INSERT INTO PES VALUES(1,'123456789',1);
INSERT INTO PES VALUES(1,'123456789',2);
INSERT INTO PES VALUES(6,'136943886',3);
INSERT INTO PES VALUES(4,'831903356',4);
INSERT INTO PES VALUES(10,'123456789',5);
INSERT INTO PES VALUES(3,'567910436',6);
INSERT INTO PES VALUES(12,'501256243',7);
INSERT INTO PES VALUES(8,'123456789',8);
INSERT INTO PES VALUES(9,'567910436',9);
INSERT INTO PES VALUES(5,'123456789',10);
INSERT INTO PES VALUES(2,'136943886',11);
INSERT INTO PES VALUES(7,'987654321',12);
INSERT INTO PES VALUES(12,'501256243',13);
INSERT INTO PES VALUES(2,'136943886',14);



/****************************************************************************************/

