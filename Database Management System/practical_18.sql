--PRACTICAL-18

--PART-A

--Display the details of students whose SPI is greater than the average SPI. 
SELECT * FROM STUDENT WHERE SPI > (SELECT AVG(SPI) FROM STUDENT)

--Display the names of students whose SPI is less than the average SPI. 
SELECT SNAME FROM STUDENT WHERE SPI < (SELECT AVG(SPI) FROM STUDENT)

--Display the student details who has the highest SPI. 
SELECT * FROM STUDENT WHERE SPI = (SELECT MAX(SPI) FROM STUDENT)

--Display the student details who has the lowest SPI. 
SELECT * FROM STUDENT WHERE SPI = (SELECT MIN(SPI) FROM STUDENT)

--Display the students whose SPI is greater than SPI of student DHARMIK. 
SELECT SNAME FROM STUDENT WHERE SPI > (SELECT SPI FROM STUDENT WHERE SNAME = ' DHARMIK')

--Display the students whose SPI is less than SPI of student RIYA. 
SELECT SNAME FROM STUDENT WHERE SPI < (SELECT SPI FROM STUDENT WHERE SNAME = ' RIYA')

--Display the students who belong to the same branch as KRUNAL. 
SELECT SNAME FROM STUDENT WHERE BRANCH IN (SELECT BRANCH FROM STUDENT WHERE SNAME = ' KRUNAL')

--Display the students whose branch is different from HETVI. 
SELECT SNAME FROM STUDENT WHERE BRANCH NOT IN (SELECT BRANCH FROM STUDENT WHERE SNAME = ' HETVI')

--Display the second highest SPI from RESULT table.  
SELECT MAX(SPI) FROM RESULT WHERE SPI < (SELECT MAX(SPI) FROM RESULT)

--Display the second lowest SPI from RESULT table.  
SELECT MIN(SPI) FROM RESULT WHERE SPI > (SELECT MIN(SPI) FROM RESULT)

--Display the names of students whose SPI is above branch-wise average SPI.  
SELECT SNAME FROM STUDENT WHERE EXISTS (SELECT BRANCH,AVG(SPI) FROM STUDENT GROUP BY BRANCH)

--Display the branch having maximum average SPI. 
SELECT BRANCH, AVG(SPI) AS Average_SPI
FROM STUDENT
GROUP BY BRANCH
HAVING AVG(SPI) = (
    SELECT MAX(Avg_SPI)
    FROM (
        SELECT AVG(SPI) AS Avg_SPI
        FROM STUDENT
        GROUP BY BRANCH
    ) AS Branch_Averages
)

-- Display the branch having minimum average SPI. 
SELECT BRANCH, AVG(SPI) AS Average_SPI
FROM STUDENT
GROUP BY BRANCH
HAVING AVG(SPI) = (
    SELECT MIN(Avg_SPI)
    FROM (
        SELECT AVG(SPI) AS Avg_SPI
        FROM STUDENT
        GROUP BY BRANCH
    ) AS Branch_Averages
)

--PART-B

--Display the students whose SPI is greater than all students of ME branch.  
SELECT * FROM STUDENT WHERE SPI > (SELECT SUM(SPI) FROM STUDENT WHERE BRANCH = 'MECHANICAL')

--Display the students whose SPI is less than any student of ME branch.  
SELECT * FROM STUDENT WHERE SPI < (SELECT MAX(SPI) FROM STUDENT WHERE BRANCH = 'MECHANICAL')

--Display the student details whose SPI is not equal to any SPI of EC branch students.  
SELECT * FROM STUDENT WHERE SPI != (SELECT MAX(SPI) FROM STUDENT WHERE BRANCH = 'ELECTRICAL ')

--Display the names of students who scored higher SPI than student of RNO 103.  
SELECT SNAME FROM STUDENT WHERE SPI > (SELECT SPI FROM STUDENT WHERE STDID = 103)

--Display the students whose SPI is greater than average SPI of their own branch.
SELECT * FROM STUDENT AS OUTER_STUDENT 
WHERE SPI > (SELECT AVG(SPI) FROM STUDENT AS INNER_STUDENT WHERE INNER_STUDENT.BRANCH = OUTER_STUDENT.BRANCH)

--Display the students whose SPI is greater than the average SPI of CE branch but greater than the maximum SPI of ME branch.  
SELECT * FROM STUDENT
WHERE SPI > (SELECT AVG(SPI) FROM STUDENT WHERE BRANCH = 'COMPUTER')
AND SPI > (SELECT MAX(SPI) FROM STUDENT WHERE BRANCH = 'MECHANICAL')

--Display the branch names whose average SPI is greater than the overall average SPI.
SELECT BRANCH,AVG(SPI) FROM STUDENT 
GROUP BY BRANCH 
HAVING AVG(SPI) > (SELECT AVG(SPI) FROM STUDENT)

--Display the students who have maximum SPI in their respective branch. 
SELECT * FROM STUDENT AS OUTER_STUDENT
WHERE SPI = (SELECT MAX(SPI) FROM STUDENT AS INNER_STUDENT WHERE INNER_STUDENT.BRANCH = OUTER_STUDENT.BRANCH)

--Display the students whose SPI is greater than their average SPI of their branch and greater than overall average SPI.  
SELECT * FROM STUDENT AS OUTER_STUDENT
WHERE SPI > (SELECT AVG(SPI) FROM STUDENT AS INNER_STUDENT WHERE INNER_STUDENT.BRANCH = OUTER_STUDENT.BRANCH)
AND SPI > (SELECT AVG(SPI) FROM STUDENT)

--PART-C

--Display the students whose SPI is greater than at least one student of every branch.  
SELECT * FROM STUDENT AS OUTER_STUDENT
WHERE SPI > (SELECT MIN(SPI) FROM STUDENT AS INNER_STUDENT WHERE INNER_STUDENT.BRANCH = OUTER_STUDENT.BRANCH)

--Display the students whose SPI is less than all students of CE branch.  
SELECT * FROM STUDENT WHERE SPI < ALL(SELECT SPI FROM STUDENT WHERE BRANCH = 'COMPUTER')

--Display the branch that contains the student with highest SPI.  
SELECT DISTINCT * FROM STUDENT WHERE SPI = (SELECT MAX(SPI) FROM STUDENT)

--Display the students whose SPI is less than the SPI of every student in CE branch and greater than every student in ME branch.
SELECT * FROM STUDENT WHERE SPI < (SELECT MIN(SPI) FROM STUDENT WHERE BRANCH = 'COMPUTER')
AND SPI > (SELECT MAX(SPI) FROM STUDENT WHERE BRANCH = 'MECHANICAL')
