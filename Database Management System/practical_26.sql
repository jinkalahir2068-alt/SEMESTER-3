--Create a table valued function to display all student records.
CREATE FUNCTION FN_ALL_STUDENTS()
RETURNS TABLE
AS
RETURN
(
    SELECT * FROM STUDENT
);

--Create a table valued function that accepts CITY and returns all students from that city. 
CREATE FUNCTION FN_STUDENT_CITY
(
    @CITY VARCHAR(50)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM STUDENT
    WHERE CITY = @CITY
);


-- Create a table valued function that accepts BRANCH and returns all students of that branch. 
CREATE FUNCTION FN_STUDENT_BRANCH
(
    @BRANCH VARCHAR(50)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM STUDENT
    WHERE BRANCH = @BRANCH
);

--Create a table valued function that accepts SPI and returns students whose SPI is greater than entered SPI. 
CREATE FUNCTION FN_STUDENT_SPI
(
    @SPI DECIMAL(4,2)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM STUDENT
    WHERE SPI > @SPI
);

-- Create a table valued function that accepts MIN_SPI and MAX_SPI and returns students whose SPI lies between given range. 
CREATE FUNCTION FN_STUDENT_SPI_RANGE
(
    @MIN_SPI DECIMAL(4,2),
    @MAX_SPI DECIMAL(4,2)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM STUDENT
    WHERE SPI BETWEEN @MIN_SPI AND @MAX_SPI
);

--Part – B

--Create a table valued function that accepts STDID and returns details of that student. 
CREATE FUNCTION FN_STUDENT_BY_ID
(
    @STDID INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM STUDENT
    WHERE STDID = @STDID
);

--Create a table valued function that accepts CITY and returns students whose SPI is greater than 7 from that city. 
CREATE FUNCTION FN_CITY_SPI
(
    @CITY VARCHAR(50)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM STUDENT
    WHERE CITY = @CITY
      AND SPI > 7;
);

-- Create a table valued function that accepts BRANCH and returns students whose SPI is less than 8 from that branch. 
CREATE FUNCTION FN_BRANCH_SPI
(
    @BRANCH VARCHAR(50)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM STUDENT
    WHERE BRANCH = @BRANCH
      AND SPI < 8;
);

--Create a table valued function that accepts TOPN and returns top N students based on SPI. 
CREATE FUNCTION FN_TOP_STUDENTS
(
    @TOPN INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT TOP (@TOPN) *
    FROM STUDENT
    ORDER BY SPI DESC
);

--Create a table valued function that accepts BRANCH and returns highest SPI student from that branch.
CREATE FUNCTION FN_HIGHEST_SPI
(
    @BRANCH VARCHAR(50)
)
RETURNS TABLE
AS
RETURN
(
    SELECT TOP 1 *
    FROM STUDENT
    WHERE BRANCH = @BRANCH
    ORDER BY SPI DESC
);
