
--Create trigger for preventing removal of employees from the table. 
CREATE TRIGGER TR_Prevent_Delete
ON EMPLOYEE
INSTEAD OF DELETE
AS
BEGIN
    PRINT 'Employee records cannot be deleted';
END;

-- Create INSTEAD OF DELETE trigger to prevent deletion of employee records and store deleted data into EMPLOYEE_LOG table. 
CREATE TABLE EMPLOYEE_LOG
(
    EID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    CITY VARCHAR(50),
    DEPARTMENT VARCHAR(50),
    SALARY DECIMAL(10,2),
    JOININGYEAR INT,
    ACTION_TYPE VARCHAR(20),
    ACTION_DATE DATETIME
);

CREATE TRIGGER TR_Prevent_Delete_Log
ON EMPLOYEE
INSTEAD OF DELETE
AS
BEGIN
    INSERT INTO EMPLOYEE_LOG
    (
        EID, FirstName, LastName, Gender,
        CITY, DEPARTMENT, SALARY, JOININGYEAR,
        ACTION_TYPE, ACTION_DATE
    )
    SELECT
        EID, FirstName, LastName, Gender,
        CITY, DEPARTMENT, SALARY, JOININGYEAR,
        'DELETE', GETDATE()
    FROM deleted;

    PRINT 'Deletion prevented. Employee data stored in log table.';
END

--Create INSTEAD OF trigger to log all operations on EMPLOYEE table (INSERT/UPDATE/DELETE) into EMPLOYEE_LOG table.
CREATE TRIGGER TR_Log_Insert
ON EMPLOYEE
AFTER INSERT
AS
BEGIN
    INSERT INTO EMPLOYEE_LOG
    (
        EID, FirstName, LastName, Gender,
        CITY, DEPARTMENT, SALARY, JOININGYEAR,
        ACTION_TYPE, ACTION_DATE
    )
    SELECT
        EID, FirstName, LastName, Gender,
        CITY, DEPARTMENT, SALARY, JOININGYEAR,
        'INSERT', GETDATE()
    FROM inserted;
END;

-- Create trigger to block employees from updating their JOININGYEAR and print message ‘Employees are not allowed to update their joining year’. 
CREATE TRIGGER TR_Prevent_JoiningYear_Update
ON EMPLOYEE
INSTEAD OF UPDATE
AS
BEGIN
    IF UPDATE(JOININGYEAR)
    BEGIN
        PRINT 'Employees are not allowed to update their joining year';
        RETURN;
    END;

    UPDATE EMPLOYEE
    SET FirstName = i.FirstName,
        LastName = i.LastName,
        Gender = i.Gender,
        CITY = i.CITY,
        DEPARTMENT = i.DEPARTMENT,
        SALARY = i.SALARY
    FROM EMPLOYEE e
    INNER JOIN inserted i ON e.EID = i.EID;
END;

-- Create trigger for preventing duplicate employee records having same FIRSTNAME, LASTNAME, and CITY. 
CREATE TRIGGER TR_Prevent_Duplicate_Employee
ON EMPLOYEE
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS
    (
        SELECT 1
        FROM inserted i
        INNER JOIN EMPLOYEE e
            ON i.FirstName = e.FirstName
            AND i.LastName = e.LastName
            AND i.CITY = e.CITY
    )
    BEGIN
        PRINT 'Duplicate employee record is not allowed';
        RETURN;
    END;

    INSERT INTO EMPLOYEE
    (
        EID, FirstName, LastName, Gender,
        CITY, DEPARTMENT, SALARY, JOININGYEAR
    )
    SELECT
        EID, FirstName, LastName, Gender,
        CITY, DEPARTMENT, SALARY, JOININGYEAR
    FROM inserted;
END;
