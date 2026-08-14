
--practical-8

--Display the Highest, Lowest Salary and Label the columns Maximum, Minimum respectively.
select min(salary) as minimun,max(salary) as maximum from EMPLOYEE

--Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively. 
select sum(salary) as total_sal, avg(salary) as average_Sal from EMPLOYEE

--Find total number of employees of EMPLOYEE table. 
select count(eid) from EMPLOYEE

--Find highest salary from Rajkot city. 
select max(salary) from EMPLOYEE where city='Rajkot'

--Give maximum salary from IT department. 
select max(salary) from EMPLOYEE where department ='IT'

--Count employee department is HR. 
select count(eid) from EMPLOYEE where department ='HR'

--Display average salary of Admin department. 
select AVG(salary) from EMPLOYEE where department='Admin'

--Display total salary of HR department. 
select sum(salary) from EMPLOYEE where department ='HR'

--Count total number of cities of employee without duplication. 
SELECT COUNT(DISTINCT city) FROM employee
 
--Count unique departments. 
select count(distinct department) from EMPLOYEE

--Display minimum salary of employee who belongs to Ahmedabad. 
select min(salary) from EMPLOYEE where city = 'AHMEDABAD '

--Find city wise highest salary.
select max(salary),city from EMPLOYEE group by city

--Find department wise lowest salary. 
select min(salary),department from EMPLOYEE group by department

--Display minimum salary in each city. 
select min(salary),city from EMPLOYEE group by city

--Display average salary of employees from Surat. 
select avg(salary) from EMPLOYEE where city=' SURAT '

--Display total salary of female employees.
select sum(salary) from EMPLOYEE where GENDER='Female'

--Count number of male employees. 
select count(eid) from EMPLOYEE where GENDER='Male' 

--Display city with the total number of employees belonging to each city.
select city,count(eid) from EMPLOYEE group by city

--Count number of employees in each city where gender is MALE.
select city,count(eid) from EMPLOYEE where gender ='MALE' group by city

--Display maximum salary in each department where city is not Ahmedabad. 
select max(salary),DEPARTMENT from EMPLOYEE where city != 'AHMEDABAD ' group by DEPARTMENT

--PART-B

--Display minimum salary in each city where gender is FEMALE.
select min(salary),city from EMPLOYEE where gender ='FEMALE' group by city

--Give total salary of each department of EMPLOYEE table. 
select sum(salary),department from EMPLOYEE group by DEPARTMENT

--Give average salary of each department of EMPLOYEE table without displaying the respective department name. 
select AVG(salary) from EMPLOYEE group by DEPARTMENT

--Count the number of employees for each department in every city. 
select DEPARTMENT ,city,count(eid)from EMPLOYEE group by DEPARTMENT,city

--Calculate the total salary distributed to male and female employees. 
select sum(salary),gender from EMPLOYEE group by GENDER

--PART-C

--Give city wise maximum and minimum salary of female employees. 
select min(salary),max(salary),city from EMPLOYEE where gender='female' group by city

--Calculate department, city, and gender wise average salary. 
select avg(salary) from EMPLOYEE group by department, city,  gender 

--Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
select max(salary)-min(salary) ,FIRSTNAME from EMPLOYEE group by FIRSTNAME

--Display sum of salaries of department wise where department name consist 5 letter.
select sum(salary) from EMPLOYEE where DEPARTMENT like '_____' group by DEPARTMENT

--Find the Maximum salary department & city wise in which city name starts with ‘R’.
select max(salary) from EMPLOYEE where city like 'R%' group by DEPARTMENT,CITY 
