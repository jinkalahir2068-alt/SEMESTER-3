--Display all students whose SPI is greater than 8. 
WITH STU_SPI AS
(SELECT * FROM STUDENT WHERE SPI > 8)
SELECT * FROM STU_SPI

--Display average SPI of all students. 
WITH STU_AVG_SPI AS
(SELECT STDID,AVG(SPI) AS AVG_SPI FROM STUDENT GROUP BY STDID)
SELECT * FROM STU_AVG_SPI

--Display total number of students in each branch. 
WITH TOTAL_STUDENT AS
(SELECT BRANCH ,COUNT(STDID) AS NUMBER_STU FROM STUDENT GROUP BY BRANCH)
SELECT * FROM TOTAL_STUDENT

--Display students who belong to RAJKOT city. 
WITH RAJKOT_STU  AS
(SELECT * FROM STUDENT WHERE CITY IN ('RAJKOT'))
SELECT * FROM RAJKOT_STU

--Find branch names that appear more than once. 
WITH TOTAL_BRANCH AS
(SELECT BRANCH ,COUNT(BRANCH) AS NUMBER_STU FROM STUDENT GROUP BY BRANCH)
SELECT * FROM TOTAL_BRANCH WHERE NUMBER_STU > 1

--Display row number for each student. 
WITH ROW_NUMBER_STUDENT AS 
(SELECT STDID,SNAME,BRANCH,
ROW_NUMBER() OVER (ORDER BY SNAME) AS [S_RANK]
FROM STUDENT)
SELECT * FROM ROW_NUMBER_STUDENT

--Display top 3 students based on SPI. 
WITH ROW_NUMBER_STUDENT AS 
(SELECT STDID,SNAME,BRANCH,SPI,
DENSE_RANK() OVER (ORDER BY SPI DESC) AS [S_RANK]
FROM STUDENT)
SELECT * FROM ROW_NUMBER_STUDENT WHERE S_RANK <= 3

--Display students having maximum SPI. 
WITH MAX_SPI AS 
(SELECT BRANCH,MAX(SPI) AS MAX_SPI_STU FROM STUDENT GROUP BY BRANCH)
SELECT * FROM MAX_SPI 

--Display students having minimum SPI.
WITH MIN_SPI AS 
(SELECT BRANCH,MIN(SPI) AS MIN_SPI_STU FROM STUDENT GROUP BY BRANCH)
SELECT * FROM MIN_SPI 

--Display branch-wise rank of students. 
WITH BRANCH_WISE AS
(SELECT STDID,SNAME,BRANCH,
DENSE_RANK() OVER(PARTITION BY BRANCH ORDER BY STDID) AS BRANCH_WISE_RANK
FROM STUDENT)
SELECT * FROM BRANCH_WISE

--PART-B

--Display students SPI average belonging to Computer branch. 
WITH ComputerStudents AS (
    SELECT SPI
    FROM Student
    WHERE Branch = 'Computer'
)
SELECT AVG(SPI) AS Average_SPI
FROM ComputerStudents;

--Display students whose SPI is greater than average SPI of his/her branch. 
WITH BranchAverage AS (
    SELECT Branch, AVG(SPI) AS Avg_SPI
    FROM Student
    GROUP BY Branch
)
SELECT S.*
FROM Student S
JOIN BranchAverage B
ON S.Branch = B.Branch
WHERE S.SPI > B.Avg_SPI;

--Display branch having more than 2 students. 
WITH BranchCount AS (
    SELECT Branch, COUNT(*) AS Total_Students
    FROM Student
    GROUP BY Branch
)
SELECT *
FROM BranchCount
WHERE Total_Students > 2;

--Display branches having average SPI between 7 and 9
WITH BranchAverage AS (
    SELECT Branch, AVG(SPI) AS Avg_SPI
    FROM Student
    GROUP BY Branch
)
SELECT *
FROM BranchAverage
WHERE Avg_SPI BETWEEN 7 AND 9;
