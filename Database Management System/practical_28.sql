--PRACTICAL-28

--Create trigger for printing message after employee record insertion. 
CREATE TRIGGER TR_INSERT_EMPLOYEE
ON EMPLOYEE
AFTER INSERT
AS
BEGIN
    PRINT 'Employee record inserted successfully';
END;

--Create trigger for printing message after employee record update. 
CREATE TRIGGER TR_UPDATE_EMPLOYEE
ON EMPLOYEE
AFTER UPDATE
AS
BEGIN
    PRINT 'Employee record updated successfully';
END;

-- Create trigger for printing message after employee record deletion. 
CREATE TRIGGER TR_DELETE_EMPLOYEE
ON EMPLOYEE
AFTER DELETE
AS
BEGIN
    PRINT 'Employee record deleted successfully';
END;

--Create trigger for printing message after employee salary increment. 
CREATE TRIGGER TR_SALARY_INCREMENT
ON EMPLOYEE
AFTER UPDATE
AS
BEGIN
    IF UPDATE(SALARY)
    BEGIN
        PRINT 'Employee salary updated successfully';
    END;
END;

-- Create trigger for automatically converting CITY names into uppercase during insertion. 
 CREATE TRIGGER TR_CITY_UPPERCASE
ON EMPLOYEE
INSTEAD OF INSERT
AS
BEGIN
    INSERT INTO EMPLOYEE
    SELECT EID, FirstName, LastName, Gender,
           UPPER(CITY), DEPARTMENT, SALARY, JOININGYEAR
    FROM inserted;
END;

--Part – B: 

-- Create trigger for updating employee city and printing old city and new city name. 
CREATE TRIGGER TR_CITY_CHANGE
ON EMPLOYEE
AFTER UPDATE
AS
BEGIN
    IF UPDATE(CITY)
    BEGIN
        SELECT
            d.EID,
            d.CITY AS OLD_CITY,
            i.CITY AS NEW_CITY
        FROM deleted d
        JOIN inserted i
            ON d.EID = i.EID;
    END;
END;

-- Create trigger for automatically setting CITY as 'RAJKOT' if no city value is entered during employee insertion. 
CREATE TRIGGER TR_DEFAULT_CITY
ON EMPLOYEE
AFTER INSERT
AS
BEGIN
    UPDATE EMPLOYEE
    SET CITY = 'RAJKOT'
    WHERE CITY IS NULL
      AND EID IN (SELECT EID FROM inserted);
END;

-- Create trigger for automatically adding current year in JOININGYEAR if no value is entered. 
CREATE TRIGGER TR_DEFAULT_JOININGYEAR
ON EMPLOYEE
AFTER INSERT
AS
BEGIN
    UPDATE EMPLOYEE
    SET JOININGYEAR = YEAR(GETDATE())
    WHERE JOININGYEAR IS NULL
      AND EID IN (SELECT EID FROM inserted);
END;

-- Create trigger for printing employee full name after new employee insertion. 
CREATE TRIGGER TR_EMPLOYEE_FULLNAME
ON EMPLOYEE
AFTER INSERT
AS
BEGIN
    SELECT
        CONCAT(FirstName, ' ', LastName) AS FULL_NAME
    FROM inserted;
END;

--Create trigger for automatically assigning department as ‘GENERAL’ if DEPARTMENT value is NULL. 
CREATE TRIGGER TR_DEFAULT_DEPARTMENT
ON EMPLOYEE
AFTER INSERT
AS
BEGIN
    UPDATE EMPLOYEE
    SET DEPARTMENT = 'GENERAL'
    WHERE DEPARTMENT IS NULL
      AND EID IN (SELECT EID FROM inserted);
END;
