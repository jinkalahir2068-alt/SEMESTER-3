--PRACTICAL-17

--PART-A

--Create a view Employee_All with all columns.
CREATE VIEW Employee_All
AS
SELECT * FROM EMPLOYEE

--Create a view Employee_NameDeptSalary having columns FirstName, Department and Salary. 
CREATE VIEW Employee_NameDeptSalary 
AS
SELECT FIRSTNAME,DEPARTMENT,SALARY FROM EMPLOYEE

--Create a view Employee_Basic having columns EID, FirstName and City. 
CREATE VIEW Employee_Basic 
AS
SELECT EID,FIRSTNAME,CITY FROM EMPLOYEE

--Create a view IT_Employees that displays IT department data only. 
CREATE VIEW IT_Employees 
AS
SELECT * FROM EMPLOYEE WHERE DEPARTMENT='IT'

--Create a view HR_Employees that displays HR department data only. 
CREATE VIEW HR_Employees
AS 
SELECT * FROM EMPLOYEE WHERE DEPARTMENT='HR'

--Create a view Employee_2026 that displays employees joined in 2026 only. 
CREATE VIEW Employee_2026
AS 
SELECT * FROM EMPLOYEE WHERE JOININGYEAR= 2026

--Create a view Patel_Employees that displays employees whose last name is PATEL. 
CREATE VIEW Patel_Employees
AS
SELECT * FROM EMPLOYEE WHERE LASTNAME='PATEL'

--Create a view High_Salary_Emp having all columns but employees whose salary is more than 12000.
CREATE VIEW High_Salary_Emp
AS
SELECT * FROM EMPLOYEE WHERE SALARY > 12000

--Create a view that displays information of all employees whose salary is above 14000. 
CREATE VIEW EMP_SAL
AS 
SELECT * FROM EMPLOYEE WHERE SALARY > 14000

--Create a view that displays employees having salary below 10000. 
CREATE VIEW EMP_BELOW
AS
SELECT * FROM EMPLOYEE WHERE SALARY < 10000

--Create a view Server_Dept that displays Server department employees only. 
CREATE VIEW SERVER_DEPT
AS
SELECT * FROM EMPLOYEE WHERE DEPARTMENT = 'SERVER'

--Insert a new record into Employee_Basic view. (111, MEET, SURAT) 
INSERT INTO Employee_Basic VALUES(111,'MEET','SURAT')

--Update the department of DEEP from ADMIN to IT in Employee_NameDeptSalary view. 
UPDATE Employee_NameDeptSalary
SET DEPARTMENT = 'IT'
WHERE FIRSTNAME = 'DEEP'

--Delete an employee whose EID is 107 from Employee_Basic view. 
DELETE Employee_Basic
WHERE EID=107

--Drop IT_Employees view from the database. 
DROP VIEW IT_Employees

--PART-B

-- Create a view Admin_Employees that displays ADMIN department employees only. 
CREATE VIEW Admin_Employees
AS 
SELECT * FROM DEPARTMENT='ADMIN'

--Create a view Female_Employees that displays female employee data only. 
CREATE VIEW Female_Employees 
AS
SELECT * FROM EMPLOYEE WHERE GENDER='FEMALE'

--Create a view Male_Employees that displays male employee data only. 
CREATE VIEW Male_Employees 
AS
SELECT * FROM EMPLOYEE WHERE GENDER='MALE'

--Create a view Rajkot_Employees that displays employees from Rajkot city only. 
CREATE VIEW Rajkot_Employees 
AS
SELECT * FROM EMPLOYEE WHERE CITY = 'RAJKOT'

--Create a view Ahmedabad_Employees that displays employees from Ahmedabad city only. 
CREATE VIEW Ahmedabad_Employees 
AS
SELECT * FROM EMPLOYEE WHERE CITY = 'Ahmedabad'

--Create a view Salary_Between that displays employees whose salary is between 10000 and 14000. 
CREATE VIEW Salary_Between
AS
SELECT * FROM EMPLOYEE WHERE SALARY BETWEEN 10000 AND 14000

--Create a view Recent_Employees that displays employees joined after 2023. 
CREATE VIEW Recent_Employees
AS
SELECT * FROM EMPLOYEE WHERE JOININGYEAR > 2023

--Create a view Old_Employees that displays employees joined before 2023. 
CREATE VIEW Old_Employees
AS
SELECT * FROM EMPLOYEE WHERE JOININGYEAR < 2023

--Create a view Employees_Start_R that displays employees whose first name starts with R. 
CREATE VIEW Employees_Start_R 
AS
SELECT * FROM EMPLOYEE WHERE FIRSTNAME LIKE('R%')

--Create a view Employees_End_A that displays employees whose first name ends with A.
CREATE VIEW Employees_End_A
AS
SELECT * FROM EMPLOYEE WHERE FIRSTNAME LIKE('%A')

--PART-C

--Create a view Employees_NameContains_H that displays employees whose first name contains H. 
CREATE VIEW Employees_NameContains_H
AS
SELECT * FROM EMPLOYEE WHERE FIRSTNAME LIKE('%H%') 

--Create a view for the employees whose first name contains vowels. 
CREATE VIEW Employees_NameContains
AS
SELECT * FROM EMPLOYEE WHERE FIRSTNAME LIKE('%[A,E,I,O,U]%') 

--Create a view FourLetter_Name having EID, FirstName and Department columns in which FirstName consists of four letters. 
CREATE VIEW FourLetter_Name
AS
SELECT EID,FIRSTNAME,DEPARTMENT FROM EMPLOYEE WHERE FIRSTNAME LIKE('____') 

--Create a view for the employees whose name starts with M and ends with N. 
CREATE VIEW VIEW_MN
AS
SELECT * FROM EMPLOYEE WHERE FIRSTNAME LIKE('M%N') 

--Create a view Transport_Dept that displays Transport department employees only. 
CREATE VIEW Transport_Dept
AS 
SELECT * FROM EMPLOYEE WHERE DEPARTMENT = 'TRANSPORT'
