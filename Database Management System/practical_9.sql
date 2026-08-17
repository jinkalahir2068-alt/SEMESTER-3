--Practical-9--

--Prat-A--

--Display cities where total salary of employees greater than 20000. 
select city,sum(salary) from EMPLOYEE group by city having sum(salary)>20000

--Display departments having average salary greater than 12000. 
select department,avg(salary) from EMPLOYEE group by department having avg(salary)>12000

--Display departments having total salary greater than 20000. 
select department ,sum(salary) from EMPLOYEE group by department having sum(salary)>20000

--Display departments having number of employees greater than 2. 
select department ,count(eid)from EMPLOYEE group by department having count(eid)>2

--Display cities where minimum salary less than 7000. 
select city,min(salary) from EMPLOYEE group by city having min(salary)<7000

--Display cities where average salary less than 12000. 
select city,avg(salary) from EMPLOYEE group by city having avg(salary)<12000

--Display departments where maximum salary greater than 14000. 
select department,max(salary) from EMPLOYEE group by department having max(salary) >14000

--Display cities where total salary greater than equal to 30000. 
select city,sum(salary) from EMPLOYEE group by city having sum(salary)>=30000

--Display departments having number of employees equal to 2. 
select department ,count(eid) from EMPLOYEE group by department having count(eid)=2

--Display cities having number of female employees greater than equal to 1. 
select city,count(eid) from EMPLOYEE where gender='female' group by city having count(eid)>=1

--Display departments where minimum salary of male employees greater than 7000. 
select department, min(salary) from EMPLOYEE where gender='male' group by department having min(salary)>7000
 
--Display cities where maximum salary of female employees less than 13000.
select city ,max(salary) from EMPLOYEE where gender='female' group by city having max(salary)<13000

--Display departments where average salary greater than 10000 and less than 14000. 
select department,avg(salary) from EMPLOYEE group by department having avg(salary) >10000 and avg(salary)<14000

--display cities where number of employee joined before 2023 greater than 1. 
select city,count(eid) from EMPLOYEE where joiningyear <2023 group by city having count(eid)>1

--Display cities where total salary of male employees greater than 15000, ordered by total salary. 
select city ,sum(salary) from EMPLOYEE where gender='male' group by city having sum(salary)>15000 order by sum(salary)

--Display departments where maximum salary greater than 13000, ordered by max salary.
select department, max(salary) from EMPLOYEE group by department having max(salary)>13000 order by max(salary)

--Display cities where total salary of male employees greater than 15000. 
select city ,sum(salary) from EMPLOYEE where gender='male' group by city having sum(salary)>15000 

-- Display departments where employees joined after 2022 and count greater than 1.  
select department ,count(eid) from EMPLOYEE where JOININGYEAR > 2022 group by DEPARTMENT having count(eid)>1

--Display departments where average salary of female employees greater than 8000.    
select department ,avg(salary) from EMPLOYEE where gender ='female' group by department having avg(salary)>8000

-- Display departments having total salary greater than 20000 and less than 40000. 
select department ,sum(salary) from EMPLOYEE group by department having sum(salary) between 20000 and 40000

--part-B--

--Display departments having total salary of employees joined after 2021 greater than 20000.  
select department ,sum(salary) from EMPLOYEE where joiningyear > 2021 group by department having sum(salary)>20000

--Display cities where average salary of employees joined after 2022 greater than 10000.  
select city,avg(salary) from EMPLOYEE where JOININGYEAR > 2022 group by city having avg(salary)>10000

--Display cities having number of distinct departments greater than 1.  
select city,count(distinct department) from EMPLOYEE group by city having count(distinct department)>1 

--Display cities where maximum salary of employees joined before 2022 greater than 12000.  
select city ,max(salary) from EMPLOYEE where joiningyear < 2022 group by city having max(salary)>12000

-- Display departments where total salary of female employees less than 15000.  
select department ,sum(salary) from EMPLOYEE where gender='female' group by department having sum(salary) <15000

--part-c--

--Display cities where number of male employees greater than female employees.  
SELECT city FROM EMPLOYEE GROUP BY city 
HAVING COUNT(CASE WHEN gender = 'male' THEN sum(salary) END) > COUNT(CASE WHEN gender = 'female' THEN sum(salary) END)

-- Display departments having number of cities greater than 1.  
select department from EMPLOYEE group by department having count(city)>1

--Display cities where total salary excluding IT department greater than 15000.  
select city from EMPLOYEE where department !='IT' group by  city having sum(salary)>15000

-- Display departments where average salary excluding HR employees greater than 11000.  
select department from EMPLOYEE where DEPARTMENT != 'HR' group by department having avg(salary)>11000

-- Display departments where total salary of male employees greater than female employees. 
SELECT department 
FROM EMPLOYEE 
GROUP BY department
HAVING SUM(CASE WHEN gender = 'male' THEN salary ELSE 0 END) > SUM(CASE WHEN gender = 'female' THEN salary ELSE 0 END)
