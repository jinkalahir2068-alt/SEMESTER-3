
--Create a cursor Employee_Cursor to fetch all rows from EMPLOYEE table and display them.
DECLARE Employee_Cursor CURSOR FOR
SELECT * FROM EMPLOYEE;

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor;

WHILE @@FETCH_STATUS = 0
BEGIN
    FETCH NEXT FROM Employee_Cursor;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

--Create a cursor to display all female employees from EMPLOYEE table. 
DECLARE Employee_Cursor CURSOR FOR
SELECT * FROM EMPLOYEE
WHERE Gender = 'Female';

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor;

WHILE @@FETCH_STATUS = 0
BEGIN
    FETCH NEXT FROM Employee_Cursor;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor Employee_Cursor_Fetch to fetch records in form of EID_FirstName_LastName. 
DECLARE Employee_Cursor_Fetch CURSOR FOR
SELECT EID, FirstName, LastName
FROM EMPLOYEE;

DECLARE @ID INT, @FNAME VARCHAR(50), @LNAME VARCHAR(50);

OPEN Employee_Cursor_Fetch;

FETCH NEXT FROM Employee_Cursor_Fetch
INTO @ID, @FNAME, @LNAME;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@ID, '_', @FNAME, '_', @LNAME);

    FETCH NEXT FROM Employee_Cursor_Fetch
    INTO @ID, @FNAME, @LNAME;
END;

CLOSE Employee_Cursor_Fetch;
DEALLOCATE Employee_Cursor_Fetch;

-- Create a cursor to find and display all employees with Salary greater than 12000. 
DECLARE Employee_Cursor CURSOR FOR
SELECT EID, FirstName, JOINING_DATE
FROM EMPLOYEE
WHERE YEAR(JOINING_DATE) >= 2022;

DECLARE @ID INT, @NAME VARCHAR(50), @DATE DATE;

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @ID, @NAME, @DATE;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@ID, ' ', @NAME, ' ', @DATE);

    FETCH NEXT FROM Employee_Cursor
    INTO @ID, @NAME, @DATE;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

--Create a cursor to display all employees who joined in year 2022 or later.
DECLARE Employee_Cursor CURSOR FOR
SELECT EID, FirstName, JOINING_DATE
FROM EMPLOYEE
WHERE YEAR(JOINING_DATE) >= 2022;

DECLARE @ID INT, @NAME VARCHAR(50), @DATE DATE;

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @ID, @NAME, @DATE;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@ID, ' ', @NAME, ' ', @DATE);

    FETCH NEXT FROM Employee_Cursor
    INTO @ID, @NAME, @DATE;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor to fetch Employee Name with Department Name. 
DECLARE Employee_Cursor CURSOR FOR
SELECT FirstName, LastName, DEPTNAME
FROM EMPLOYEE;

DECLARE @FNAME VARCHAR(50), @LNAME VARCHAR(50),
        @DEPT VARCHAR(50);

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @FNAME, @LNAME, @DEPT;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@FNAME, ' ', @LNAME,
                 ' works in ', @DEPT, ' Department');

    FETCH NEXT FROM Employee_Cursor
    INTO @FNAME, @LNAME, @DEPT;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;
 
-- Create a cursor to update CITY as ‘AHMEDABAD’ for employees whose CITY value is NULL. 
DECLARE Employee_Cursor CURSOR FOR
SELECT EID FROM EMPLOYEE
WHERE CITY IS NULL;

DECLARE @ID INT;

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor INTO @ID;

WHILE @@FETCH_STATUS = 0
BEGIN
    UPDATE EMPLOYEE
    SET CITY = 'AHMEDABAD'
    WHERE EID = @ID;

    FETCH NEXT FROM Employee_Cursor INTO @ID;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor to display Employee Name with City Name. 
DECLARE Employee_Cursor CURSOR FOR
SELECT FirstName, LastName, CITY
FROM EMPLOYEE;

DECLARE @FNAME VARCHAR(50), @LNAME VARCHAR(50),
        @CITY VARCHAR(50);

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @FNAME, @LNAME, @CITY;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@FNAME, ' ', @LNAME,
                 ' lives in ', @CITY);

    FETCH NEXT FROM Employee_Cursor
    INTO @FNAME, @LNAME, @CITY;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

--Create a cursor to delete employees whose Salary is less than 5000. 
DECLARE Employee_Cursor CURSOR FOR
SELECT EID FROM EMPLOYEE
WHERE Salary < 5000;

DECLARE @ID INT;

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor INTO @ID;

WHILE @@FETCH_STATUS = 0
BEGIN
    DELETE FROM EMPLOYEE
    WHERE EID = @ID;

    FETCH NEXT FROM Employee_Cursor INTO @ID;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor to display employees department-wise. 
DECLARE Employee_Cursor CURSOR FOR
SELECT EID, FirstName, DEPTNAME
FROM EMPLOYEE
ORDER BY DEPTNAME;

DECLARE @ID INT, @NAME VARCHAR(50),
        @DEPT VARCHAR(50);

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @ID, @NAME, @DEPT;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@ID, ' ', @NAME, ' ', @DEPT);

    FETCH NEXT FROM Employee_Cursor
    INTO @ID, @NAME, @DEPT;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;
 
--Part – B 

--Create a cursor to count total employees from each department. 
DECLARE Employee_Cursor CURSOR FOR
SELECT DEPTNAME, COUNT(*) AS TOTAL
FROM EMPLOYEE
GROUP BY DEPTNAME;

DECLARE @DEPT VARCHAR(50), @TOTAL INT;

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @DEPT, @TOTAL;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@DEPT, ' Department: ', @TOTAL, ' Employees');

    FETCH NEXT FROM Employee_Cursor
    INTO @DEPT, @TOTAL;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor to display employees whose CITY starts with letter ‘R’. 
DECLARE Employee_Cursor CURSOR FOR
SELECT EID, FirstName, CITY
FROM EMPLOYEE
WHERE CITY LIKE 'R%';

DECLARE @ID INT, @NAME VARCHAR(50),
        @CITY VARCHAR(50);

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @ID, @NAME, @CITY;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@ID, ' ', @NAME, ' ', @CITY);

    FETCH NEXT FROM Employee_Cursor
    INTO @ID, @NAME, @CITY;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor to display top 3 highest salary employees from EMPLOYEE table. 
DECLARE Employee_Cursor CURSOR FOR
SELECT TOP 3 EID, FirstName, Salary
FROM EMPLOYEE
ORDER BY Salary DESC;

DECLARE @ID INT, @NAME VARCHAR(50),
        @SALARY DECIMAL(10,2);

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @ID, @NAME, @SALARY;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@ID, ' ', @NAME, ' ', @SALARY);

    FETCH NEXT FROM Employee_Cursor
    INTO @ID, @NAME, @SALARY;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor to calculate total salary department-wise. 
DECLARE Employee_Cursor CURSOR FOR
SELECT DEPTNAME, SUM(Salary) AS TOTAL_SALARY
FROM EMPLOYEE
GROUP BY DEPTNAME;

DECLARE @DEPT VARCHAR(50), @TOTAL DECIMAL(12,2);

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @DEPT, @TOTAL;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@DEPT, ' Department total salary = ', @TOTAL);

    FETCH NEXT FROM Employee_Cursor
    INTO @DEPT, @TOTAL;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;

-- Create a cursor to calculate average salary city-wise. 
DECLARE Employee_Cursor CURSOR FOR
SELECT CITY, AVG(Salary) AS AVG_SALARY
FROM EMPLOYEE
GROUP BY CITY;

DECLARE @CITY VARCHAR(50), @AVG DECIMAL(12,2);

OPEN Employee_Cursor;

FETCH NEXT FROM Employee_Cursor
INTO @CITY, @AVG;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT CONCAT(@CITY, ' Average salary = ', @AVG);

    FETCH NEXT FROM Employee_Cursor
    INTO @CITY, @AVG;
END;

CLOSE Employee_Cursor;
DEALLOCATE Employee_Cursor;
