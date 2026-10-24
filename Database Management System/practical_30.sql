
--Handle Divide by Zero Error and Print message like: Error occurs that is - Divide by zero error. 
BEGIN TRY
    DECLARE @A INT = 10, @B INT = 0;

    PRINT @A / @B;
END TRY
BEGIN CATCH
    PRINT 'Error occurs that is - Divide by zero error.';
END CATCH;

--Try to convert string to integer and handle the error using try…catch block. 
BEGIN TRY
    DECLARE @STR VARCHAR(20) = 'ABC';
    DECLARE @NUM INT;

    SET @NUM = CAST(@STR AS INT);

    PRINT @NUM;
END TRY
BEGIN CATCH
    PRINT 'Error: String cannot be converted into integer.';
END CATCH;

--Create a procedure that prints the sum of two numbers: take both numbers as integer & handle 
--exception with all error functions if any one enters string value in numbers otherwise print result. 
CREATE PROCEDURE PR_Sum
    @A INT,
    @B INT
AS
BEGIN
    BEGIN TRY
        PRINT 'Sum = ' + CAST(@A + @B AS VARCHAR(20));
    END TRY
    BEGIN CATCH
        PRINT 'Error Message: ' + ERROR_MESSAGE();
        PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS VARCHAR(20));
        PRINT 'Error Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR(20));
        PRINT 'Error State: ' + CAST(ERROR_STATE() AS VARCHAR(20));
        PRINT 'Error Line: ' + CAST(ERROR_LINE() AS VARCHAR(20));
        PRINT 'Error Procedure: ' + ISNULL(ERROR_PROCEDURE(), 'N/A');
    END CATCH;
END;

-- Handle a Primary Key Violation while inserting data into STUDENT_INFO table and print the error 
--details such as the error message, error number, severity, and state.
BEGIN TRY
    INSERT INTO STUDENT_INFO (RNO, SNAME)
    VALUES (1, 'RAHUL');
END TRY
BEGIN CATCH
    PRINT 'Error Message: ' + ERROR_MESSAGE();
    PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS VARCHAR(20));
    PRINT 'Error Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR(20));
    PRINT 'Error State: ' + CAST(ERROR_STATE() AS VARCHAR(20));
END CATCH;

--Throw custom exception using stored procedure which accepts RNO as input & that throws Error like no RNO is available in database. 
CREATE PROCEDURE PR_Check_RNO
    @RNO INT
AS
BEGIN
    BEGIN TRY
        IF NOT EXISTS
        (
            SELECT 1
            FROM STUDENT_INFO
            WHERE RNO = @RNO
        )
        BEGIN
            THROW 50001, 'No RNO is available in database.', 1;
        END;

        PRINT 'RNO is available in database.';
    END TRY
    BEGIN CATCH
        PRINT 'Error Message: ' + ERROR_MESSAGE();
        PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS VARCHAR(20));
        PRINT 'Error Severity: ' + CAST(ERROR_SEVERITY() AS VARCHAR(20));
        PRINT 'Error State: ' + CAST(ERROR_STATE() AS VARCHAR(20));
    END CATCH;
END;
