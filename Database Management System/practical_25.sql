
--Implement scalar function to return "Welcome to DBMS Lab". 
CREATE FUNCTION FN_WELCOME()
RETURNS VARCHAR(50)
AS
BEGIN
    RETURN 'Welcome to DBMS Lab';
END;

-- Implement scalar function to calculate simple interest. 
CREATE FUNCTION FN_SIMPLE_INTEREST
(
    @P INT,
    @R FLOAT,
    @T INT
)
RETURNS FLOAT
AS
BEGIN
    RETURN (@P * @R * @T) / 100;
END;

--Implement scalar function to find difference in days between two dates. 
CREATE FUNCTION FN_DATE_DIFF
(
    @D1 DATE,
    @D2 DATE
)
RETURNS INT
AS
BEGIN
    RETURN ABS(DATEDIFF(DAY, @D1, @D2));
END;

--Implement scalar function to check whether number is odd or even. 
CREATE FUNCTION FN_ODD_EVEN
(
    @N INT
)
RETURNS VARCHAR(10)
AS
BEGIN
    IF @N % 2 = 0
        RETURN 'EVEN';

    RETURN 'ODD';
END;

--Implement scalar function to print numbers from 1 to N. 
CREATE FUNCTION FN_NUMBERS
(
    @N INT
)
RETURNS VARCHAR(500)
AS
BEGIN
    DECLARE @I INT = 1;
    DECLARE @S VARCHAR(500) = '';

    WHILE @I <= @N
    BEGIN
        SET @S = @S + CAST(@I AS VARCHAR(10)) + ' ';
        SET @I = @I + 1;
    END;

    RETURN @S;
END;
 
--PART-B

--Implement scalar function to calculate factorial of given number. 
CREATE FUNCTION FN_FACTORIAL
(
    @N INT
)
RETURNS INT
AS
BEGIN
    DECLARE @I INT = 1;
    DECLARE @F INT = 1;

    WHILE @I <= @N
    BEGIN
        SET @F = @F * @I;
        SET @I = @I + 1;
    END;

    RETURN @F;
END;

--Implement scalar function to check palindrome number. 
CREATE FUNCTION FN_PALINDROME
(
    @N INT
)
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @TEMP INT = @N;
    DECLARE @REV BIGINT = 0;
    DECLARE @REM INT;

    IF @N < 0
        RETURN 'NOT PALINDROME';

    WHILE @TEMP > 0
    BEGIN
        SET @REM = @TEMP % 10;
        SET @REV = @REV * 10 + @REM;
        SET @TEMP = @TEMP / 10;
    END;

    IF @N = @REV
        RETURN 'PALINDROME';

    RETURN 'NOT PALINDROME';
END;

--Implement scalar function to find maximum of three numbers. 
CREATE FUNCTION FN_MAX
(
    @A INT,
    @B INT,
    @C INT
)
RETURNS INT
AS
BEGIN
    DECLARE @M INT;

    SET @M = @A;

    IF @B > @M
        SET @M = @B;

    IF @C > @M
        SET @M = @C;

    RETURN @M;
END;

--Implement scalar function to calculate square and cube of a number. 
CREATE FUNCTION FN_SQUARE
(
    @N INT
)
RETURNS BIGINT
AS
BEGIN
    RETURN CAST(@N AS BIGINT) * @N;
END;
