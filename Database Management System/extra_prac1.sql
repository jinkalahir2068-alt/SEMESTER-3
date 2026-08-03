-- 1. Create Table
CREATE TABLE Employee (
    EmpID INT,
    EmpName VARCHAR(50) NOT NULL,
    Department VARCHAR(30),
    City VARCHAR(30),
    Salary INT,
    Experience INT,
    Gender CHAR(1)
);

-- 2. Insert Records
INSERT INTO Employee VALUES
(1,'Rahul','IT','Rajkot',55000,4,'M'),
(2,'Amit','HR','Ahmedabad',45000,3,'M'),
(3,'Neha','IT','Rajkot',55000,5,'F'),
(4,'Priya','Sales','Surat',70000,7,'F'),
(5,'Jay','IT','Vadodara',35000,2,'M'),
(6,'Karan','HR','Rajkot',42000,3,'M'),
(7,'Meera','IT','Surat',80000,8,'F'),
(8,'Vijay','Sales','Ahmedabad',60000,6,'M'),
(9,'Pooja','IT','Rajkot',90000,10,'F'),
(10,'Ravi','Finance','Jamnagar',50000,5,'M'),
(11,'Nisha','HR','Surat',38000,2,'F'),
(12,'Harsh','IT','Ahmedabad',65000,7,'M'),
(13,'Riya','Sales','Rajkot',45000,4,'F'),
(14,'Dhruv','Finance','Surat',75000,9,'M'),
(15,'Mihir','IT','Rajkot',48000,3,'M');

-- 3.
SELECT EmpName, Salary
FROM Employee
WHERE Salary > 60000;

-- 4.
SELECT *
FROM Employee
WHERE Department='IT'
AND Salary > 50000
AND Experience > 3;

-- 5.
SELECT *
FROM Employee
WHERE City='Rajkot'
OR City='Ahmedabad';

-- 6.
SELECT *
FROM Employee
WHERE (Department='IT' AND Salary>60000)
OR (Department='HR' AND Salary>40000);

-- 7.
SELECT *
FROM Employee
WHERE City IN ('Rajkot','Ahmedabad','Surat');

-- 8.
SELECT *
FROM Employee
WHERE Department IN ('IT','HR','Sales')
AND Salary>50000;

-- 9.
SELECT *
FROM Employee
WHERE Salary BETWEEN 40000 AND 70000;

-- 10.
SELECT *
FROM Employee
WHERE Salary BETWEEN 40000 AND 80000
AND Experience BETWEEN 3 AND 8;

-- 11.
SELECT *
FROM Employee
WHERE Salary BETWEEN 30000 AND 50000
OR Experience BETWEEN 10 AND 15;

-- 12.
SELECT *
FROM Employee
WHERE City IN ('Rajkot','Ahmedabad','Surat')
AND Salary BETWEEN 40000 AND 80000;

-- 13.
SELECT *
FROM Employee
WHERE City IN ('Rajkot','Ahmedabad')
AND Department IN ('IT','HR')
AND Salary BETWEEN 50000 AND 90000;

-- 14.
SELECT *
FROM Employee
WHERE (Department='IT' AND Salary>70000)
OR (Department='HR' AND Salary>50000)
OR (City='Rajkot' AND Experience>10);

-- 15.
UPDATE Employee
SET Salary = Salary * 1.20;

-- 16.
UPDATE Employee
SET Salary = Salary * 1.15
WHERE Salary < 40000;

-- 17.
UPDATE Employee
SET Salary = Salary * 1.20
WHERE Department='IT'
AND Experience>5
AND Salary<60000;

-- 18.
UPDATE Employee
SET Salary = Salary * 1.10
WHERE Department IN ('IT','HR','Sales');

-- 19.
UPDATE Employee
SET Salary = Salary * 0.90
WHERE Department='Finance';

-- 20.
UPDATE Employee
SET Salary = Salary * 1.15
WHERE Salary BETWEEN 40000 AND 60000
AND Experience BETWEEN 3 AND 7;

-- 21.
UPDATE Employee
SET City='Rajkot'
WHERE City IN ('Ahmedabad','Jamnagar')
AND Salary>50000;

-- 22.
DELETE FROM Employee
WHERE Salary < 25000;

-- 23.
DELETE FROM Employee
WHERE Department IN ('HR','Sales');

-- 24.
DELETE FROM Employee
WHERE Experience BETWEEN 0 AND 2
AND Salary < 30000;

-- 25.
DELETE FROM Employee
WHERE City IN ('Rajkot','Ahmedabad')
AND Salary < 35000;

-- 26.
ALTER TABLE Employee
ADD Email VARCHAR(100);

-- 27.
ALTER TABLE Employee
MODIFY EmpName VARCHAR(100);

-- 28.
ALTER TABLE Employee
RENAME COLUMN EmpName TO EmployeeName;

-- 29.
TRUNCATE TABLE Employee;

-- 30.
DROP TABLE Employee;