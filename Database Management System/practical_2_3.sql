------LAB 2-----

CREATE DATABASE CSE_3A_122

CREATE TABLE Deposit (
	ACTNO int ,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50) ,
	AMOUNT DECIMAL(8,2) ,
	ADATE DATETIME 

)
INSERT INTO Deposit 
VALUES
(101 , 'MEET' ,'MAVDI' ,10000, '1-3-2025' ),
(102 , 'JAY', 'MADHAPAR' ,5000, '4-1-2026 '),
(103 ,'RAHUL', 'BEDI' ,3500, '7-1-2026 '),
(104, 'RIYA ','MAVDI' ,1200 ,'7-6-2025 '),
(105,' MANSI', 'KKV HALL', 3000,' 2-3-2024' ),
(106 ,'DIYA ','MADHAPAR ',2000,'1-3-2025 '),
(107 ,'MIRAL' ,'BEDI', 1000, '5-9-2025 '),
(108 ,'UDAY', 'UMIYA CHOWK', 5000, '2-7-2025 '),
(109, 'CHARMI', 'SHITAL PARK', 7000, '2-8-2026 '),
(110 ,'BHAVIN' ,'RING ROAD', 8000, '2-2-2025 '),
(111, 'BANSI', NULL, 9000,'1-1-2025')


CREATE TABLE STUDENT (
STDID INT ,
SNAME VARCHAR(50) ,
CITY VARCHAR(50) ,
SPI DECIMAL(4,2) ,
BRANCH VARCHAR(50) ,

)
INSERT INTO STUDENT
VALUES
(101,' HETVI',' RAJKOT', 7.40 ,'COMPUTER' ),
(102 ,'RAJ',' MORBI ',9.50 ,'MECHANICAL' ),
(103 ,'VISHAL',' RAJKOT', 9.00,'CIVIL' ),
(104 ,'DEEP',' SURAT ',8.80 ,'COMPUTER' ),
(105,' DHARMIK',' BARODA', 8.80,'CHEMICAL '),
(106,' KRUNAL','VAPI ',9.00 ,'CIVIL '),
(107,' RIYA','NAVSARI', 5.50,'COMPUTER '),
(108,' VRUNDA','KUTCH ',7.60,'ELECTRICAL '),
(109,'SMAIR','JAMNAGAR', 6.80 ,'EC '),
(110,'PARAG', 'SURAT ',7.00,'CHEMICAL '),
(111,' HARSH ','RAJKOT ',4.00,NULL )

CREATE TABLE EMPLOYEE
(
EID INT ,
FIRSTNAME VARCHAR(50),
LASTNAME VARCHAR(50),
DEPARTMENT VARCHAR(50),
SALARY DECIMAL(7,2),
CITY VARCHAR(50),
GENDER VARCHAR(50),
JOININGYEAR INT 
)

INSERT INTO EMPLOYEE 
values

(101 ,'HETVI',' PATEL' ,'ADMIN ',12000.00 ,'RAJKOT',' FEMALE ',2026 ),
(102,' RAJ ','MEHTA', 'IT ',14000.00 ,'AHMEDABAD ','MALE',2022 ),
(103 ,'VISHAL',' SHARMA', 'HR' ,15000.00 ,'BARODA', 'MALE' ,2020 ),
(104 ,'DEEP',' PATEL', 'ADMIN' ,12500.00, 'RAJKOT' ,'MALE',2026 ),
(105 ,'DHAVAL',' SHAH',' IT' ,14000.00 ,'JAMNAGAR', 'MALE' ,2024 ),
(106 ,'RIYA ','KAUR', 'IT' ,5000.00,'AHMEDABAD','FEMALE ',2024 ),
(107 ,'PARAG ','PANDYA' ,'HR ',7000.00 ,'RAJKOT' ,'MALE', 2025) ,
(108 ,'VRUNDA','VYAS' ,'SERVER', 10000.00, 'BARODA', 'FEMALE ',2022 ),
(109 ,'MEHUL',' SINGH' ,'HR' ,12000.00, 'MORBI ','MALE ',2020 ),
(110 ,'MUBIN ','PARMAR' ,'TRANSPORT', 12000.00,' SURAT ','MALE ',2021 ),
(111 ,'MAYANK ','PUROHIT','ACCOUNT' ,13000.00 ,NULL, 'MALE', 2020)


-----lab 3-----

SELECT * FROM STUDENT

select SNAME , CITY FROM STUDENT

SELECT * FROM STUDENT WHERE BRANCH = 'COMPUTER'

SELECT SNAME FROM STUDENT WHERE STDID < 105

-- Give Student Name, City and SPI of student whose SPI is greater than 6.50.  
	SELECT  SNAME , CITY , SPI FROM STUDENT WHERE SPI > 6.50

---Give name of Student whose branch is COMPUTER and SPI is greater than 8.00
	SELECT  SNAME FROM STUDENT WHERE  BRANCH = 'COMPUTER ' AND SPI > 8.00

-- Give names of students whose ID is greater than 103 and belongs to Rajkot city. 
	SELECT  SNAME FROM STUDENT WHERE  CITY  = 'RAJKOT' AND STDID > 103

--Display names of students who belong to either ‘RAJKOT’ or ‘SURAT’ city (USE OR & IN). 
SELECT  SNAME FROM STUDENT WHERE  CITY  = 'RAJKOT' OR   CITY  = 'SURAT'

-- Display names of students with branch whose SPI is greater than 8.0 and ID is less than 105.
SELECT  SNAME ,BRANCH FROM STUDENT WHERE  STDID <105  AND SPI > 8.00

--Find all students whose SPI is greater than or equal to 7.0 and less than or equal to 9.0 (USE AND & BETWEEN). 
SELECT  SNAME  FROM STUDENT WHERE  SPI >= 7.00 AND SPI <=9.00

SELECT  SNAME  FROM STUDENT WHERE  SPI  BETWEEN 7.0 AND 9.0

-- Find all students who do not belong to ‘COMPUTER’ branch.
SELECT  SNAME  FROM STUDENT WHERE  BRANCH != 'COMPUTER'

--. Display Student ID, Name & SPI of students who belong to ‘COMPUTER’, ‘CIVIL’ or ‘CHEMICAL’ branch and ID is less than 104. 
SELECT  STDID,SNAME,SPI FROM STUDENT WHERE  BRANCH = 'COMPUTER ' OR  BRANCH = ' CIVIL ' OR BRANCH = 'CHEMICAL ' AND STDID <104

--Display all student IDs and names who do not belong to ‘COMPUTER’ or ‘CIVIL’ branch (USE NOT IN).
SELECT  STDID,SNAME,SPI FROM STUDENT WHERE  BRANCH NOT IN ('COMPUTER', 'CIVIL') 

--Display all student names other than ‘DEEP’ from STUDENT table (USE NOT, <>, !=). 

SELECT  SNAME  FROM STUDENT WHERE  SNAME != 'DEEP'

--Display student names whose branch is not available (NULL) in STUDENT table. 
SELECT  SNAME  FROM STUDENT WHERE  BRANCH is NULL

--Retrieve all unique branches name from STUDENT table. 
select DISTINCT BRANCH FROM STUDENT 

--Retrieve first 50% records from STUDENT table. 
SELECT TOP 50 PERCENT * FROM STUDENT 

-- Retrieve first five student IDs from STUDENT table. 
SELECT TOP 5 STDID FROM STUDENT 

--PART B 
-- Display all the details of first five students from STUDENT table. 
SELECT TOP 5 * FROM STUDENT 

--. Display all the details of first three students whose SPI is greater than 8.0.
SELECT TOP 3 * FROM STUDENT WHERE SPI>8.0

-- Display Student ID, Name of first five students whose branch does not belong to ‘COMPUTER’ branch.
SELECT TOP 5 STDID,SNAME FROM STUDENT WHERE BRANCH != 'COMPUTER'

-- Select all details with student IDs not in the range 105 to 109. 
	select * from STUDENT Where STDID NOT between 105 and 109

-- Select all records from STUDENT where SPI is greater than 7.0 and less than or equal to 9.0, and student ID is between 102 and 108.
select * from STUDENT WHERE SPI>7.0 AND SPI <9.0 AND STDID between 102 and 108

--PART c	

-- Retrieve names of students whose city is ‘RAJKOT’ and SPI is less than 8.00. 
	select * from STUDENT Where CITY = 'RAJKOT' and  SPI<8.0

-- Display all details of students who have SPI more than 8.5 without using * from STUDENT table.
SELECT STDID , SNAME, CITY,SPI,BRANCH FROM STUDENT WHERE SPI>8.5

-- Retrieve records from STUDENT table where SPI is greater than 8.0 and student ID is less than 105. 
SELECT *  FROM STUDENT WHERE SPI>8.0 AND STDID <105

--. Retrieve records from STUDENT table where SPI is greater than 7.5 and student ID is between 100 and 110 and city is ‘RAJKOT’ or ‘SURAT’. 
SELECT *  FROM STUDENT WHERE SPI>7.5 AND STDID between 100 and 110 and CITY = 'RAJKOT' OR CITY = 'SURAT'

-- Display details of students who belong to ‘CIVIL’ or ‘MECHANICAL’ branch and SPI is greater than 8.0.
SELECT *  FROM STUDENT WHERE SPI>8.0 AND BRANCH = 'CIVIL'  OR  BRANCH = 'MECHANICAL' 
