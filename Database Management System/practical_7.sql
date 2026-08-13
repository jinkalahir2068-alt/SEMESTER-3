---practical-7

--prat-A

--Display employees detail whose FIRSTNAME starts with ‘H’. 
select * from EMPLOYEE where firstname like 'H%'

--Display employees detail whose FIRSTNAME consists of exactly 5 characters. 
select * from employee where firstname like '_____'

--Display employees detail whose CITY ends with ‘T’ and has 6 characters. 
select * from employee where city like '_____T'

--Display employees detail whose LASTNAME ends with ‘EL’. 
select * from employee where lastname like '%EL'

--Display employees detail whose FIRSTNAME starts with ‘R’ and ends with ‘A’. 
select * from employee where firstname like 'R%A'

--display employees detail whose FIRSTNAME starts with ‘V’ and third character is ‘S’. 
select * from employee where firstname like 'V_S%'

--Display employees detail whose CITY is NULL and FIRSTNAME has 6 characters. 
select * from employee where city is null and firstname like '______'

--Display employees detail whose FIRSTNAME contains ‘AR’. 
select * from employee where firstname like '%AR%'

--Display employees detail whose CITY starts with ‘R’ or ‘B’.
select * from EMPLOYEE where city like '[R,B]%' 

--Display employees detail whose DEPARTMENT is NOT NULL. 
select * from EMPLOYEE where DEPARTMENT is not null

--Display employees detail whose FIRSTNAME starts from alphabet A to H. 
select * from EMPLOYEE where FIRSTNAME like '[A-H]%'

--Display employees detail whose second character of FIRSTNAME is a vowel. 
select * from EMPLOYEE where FIRSTNAME like '_[A,I,E,O,U]%'

--Display employees detail whose FIRSTNAME length ≥ 5. 
select * from EMPLOYEE where len(firstname)>=5

--Display employees detail whose LASTNAME starts with ‘PA’.
select * from EMPLOYEE where LASTNAME like 'PA%'

--Display employees detail whose CITY does not start with ‘B’. 
select * from EMPLOYEE where city like '[^B]%'

--Display employees whose second character of FIRSTNAME is a not vowel. 
select * from EMPLOYEE where FIRSTNAME like '_[^A,I,E,O,U]%'

--Display employees whose JOINING YEAR last digit is 4 or 6.
select * from EMPLOYEE where JOININGYEAR like '%[4,6]'

--Display employees detail whose FIRSTNAME starts with ‘H’, ends with ‘I’, and CITY contains ‘RA’. 
select * from EMPLOYEE where FIRSTNAME like 'H%I' and city like '%RA%'

--Display employees detail whose FIRSTNAME contains ‘A’, CITY ends with ‘D’, and DEPARTMENT is NOT NULL. 
select * from EMPLOYEE where FIRSTNAME like '%A%' and city like '%D' and department is not null

--Display employees whose second and third characters of FIRSTNAME are vowels and CITY starts with ‘R’.
select * from EMPLOYEE where FIRSTNAME like '_[A,I,E,O,U][A,I,E,O,U]%' and city like 'R%'

--part-B

--Display employees whose CITY contains ‘RA’ and salary less than 13000 and joining year last digit is 6. 
select * from EMPLOYEE where city like '%RA%' and salary <13000 and JOININGYEAR like '%6'

--Display employees whose SALARY between 10000 and 15000 and CITY name contains 'KO' and FIRSTNAME start with H. 
select * from  EMPLOYEE where SALARY between 10000 and 15000 and CITY like '%KO%' and FIRSTNAME like 'H%'

--Display employees whose FIRSTNAME starts with ‘A’ or ‘D’ and SALARY greater than 12000.
select * from EMPLOYEE where firstname like '[A,D]%' and SALARY > 12000

--Display employees whose CITY contains ‘N’ and SALARY less than 15000. 
select * from EMPLOYEE where CITY like '%N%' and SALARY <15000

--Display employees whose FIRSTNAME length = 6 and CITY ends with ‘AR’. 
select * from EMPLOYEE where len(FIRSTNAME)=6 and CITY like '%AR'

--part-C

--Display employees whose FIRSTNAME second character is vowel and LASTNAME ends with ‘R’ and SALARY less than 12000.
select * from EMPLOYEE where FIRSTNAME like '_[A,I,E,O,U]%' and LASTNAME like '%R' and SALARY <12000

--Display employees whose CITY is NOT NULL and FIRSTNAME does not start with vowel and DEPARTMENT not in (‘HR’, ‘IT’). 
select * from EMPLOYEE where city is not null and FIRSTNAME like '[^A,I,E,O,U]%' and DEPARTMENT not in('HR', 'IT')

--Display employees whose CITY is not NULL, FIRSTNAME ends with vowels, and DEPARTMENT is neither ‘HR’ nor ‘IT’. 
select * from EMPLOYEE where CITY is not NULL and FIRSTNAME like '%[A,I,E,O,U]' and DEPARTMENT not in('HR', 'IT')

--Display employees whose FIRSTNAME ends with a vowel, department name start with vowel, and SALARY is between 10000 and 15000. 
select * from EMPLOYEE where FIRSTNAME like '%[A,I,E,O,U]' and DEPARTMENT like '[A,I,E,O,U]%' and SALARY between 10000 and 15000

--Display employees whose LASTNAME contains ‘A’ at least twice, gender is male, and SALARY is not equal to 14000. 
select * from EMPLOYEE where LASTNAME like 'A%A%A' and gender = 'male' and SALARY != 14000
