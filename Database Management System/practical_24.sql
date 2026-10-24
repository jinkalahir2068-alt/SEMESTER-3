
--PRACTICAL-24

--Create a stored procedure to generate department-wise salary statistics like total salary, average salary, minimum salary, and maximum salary. (User enter only department name) 
CREATE PROCEDURE SP_DEPT_SALARY
    @DEPTNAME VARCHAR(50)
AS
BEGIN
    SELECT
        SUM(SALARY) AS TOTAL_SALARY,
        AVG(SALARY) AS AVG_SALARY,
        MIN(SALARY) AS MIN_SALARY,
        MAX(SALARY) AS MAX_SALARY
    FROM EMPLOYEE
    WHERE DEPARTMENT = @DEPTNAME;
END;

EXEC SP_DEPT_SALARY 'COMPUTER';

--Create a stored procedure that accepts a joining year and displays employees who joined that year.
CREATE PROCEDURE SP_EMPLOYEE_BY_YEAR
    @YEAR INT
AS
BEGIN
    SELECT *
    FROM EMPLOYEE
    WHERE YEAR(JOININGYEAR) = @YEAR;
END;

EXEC SP_EMPLOYEE_BY_YEAR 2024;

--Create a stored procedure for dynamic employee search using parameters (User may enter partial city name). 
CREATE PROCEDURE SP_SEARCH_EMPLOYEE
    @CITY VARCHAR(50)
AS
BEGIN
    SELECT *
    FROM EMPLOYEE
    WHERE CITY LIKE '%' + @CITY + '%';
END;

EXEC SP_SEARCH_EMPLOYEE 'RAJ';

---Create a stored procedure that accepts a salary amount and displays employees earning more than the entered salary. 
CREATE PROCEDURE SP_EMPLOYEE_SALARY
    @SALARY DECIMAL(10,2)
AS
BEGIN
    SELECT *
    FROM EMPLOYEE
    WHERE SALARY > @SALARY;
END;

EXEC SP_EMPLOYEE_SALARY 30000;

-- Create a stored procedure to display top N highest paid employees from each department (Value of N is entered by user).
CREATE PROCEDURE SP_TOP_N_EMPLOYEES
    @N INT
AS
BEGIN
    WITH CTE AS
    (
        SELECT *,
               ROW_NUMBER() OVER (
                   PARTITION BY DEPTNAME
                   ORDER BY SALARY DESC
               ) AS R
        FROM EMPLOYEE
    )
    SELECT *
    FROM CTE
    WHERE R <= @N;
END;

EXEC SP_TOP_N_EMPLOYEES 2;

--Create a stored procedure to increase salary department-wise by a given percentage. (User Enter Department Name and %, e.g. Computer 10). 
CREATE PROCEDURE SP_INCREASE_SALARY
    @DEPTNAME VARCHAR(50),
    @PERCENTAGE DECIMAL(5,2)
AS
BEGIN
    UPDATE EMPLOYEE
    SET SALARY = SALARY + (SALARY * @PERCENTAGE / 100)
    WHERE DEPARTMENT = @DEPTNAME;
END;

--Create a stored procedure to display employees having experience greater than or equal to the entered years.
CREATE PROCEDURE SP_EMPLOYEE_EXPERIENCE
    @YEARS INT
AS
BEGIN
    SELECT *
    FROM EMPLOYEE
    WHERE DATEDIFF(YEAR, JOININGYEAR, GETDATE()) >= @YEARS;
END;

--Create a stored procedure that accepts a number as input and displays details of the last N employees who joined the organization.
CREATE PROCEDURE SP_LAST_N_EMPLOYEES
    @N INT
AS
BEGIN
    SELECT TOP (@N) *
    FROM EMPLOYEE
    ORDER BY JOININGYEAR DESC
END;
