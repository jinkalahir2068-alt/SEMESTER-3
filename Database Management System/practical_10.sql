--PRACTICAL-10--

--PART-A--
--math functions

--Display the result of 5 multiply by 30.
select (5*30) as multiply

--Find out the absolute value of -25, 25, -50 and 50. 
select abs(-25) as abs1,abs(25) as abs2,abs(-50) as abs3,abs(50) as abs4

--Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2. 
select floor(25.2),floor(25.7),floor(-25.2)

--Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
select CEILING(25.2),CEILING(25.7),CEILING(-25.2)

--Find out remainder of 5 divided 2 and 5 divided by 3. 
select (5%2), (5%3)

--Find out value of 3 raised to 2nd power and 4 raised 3rd power. 
select power(3,2), power(4,3)

--Find out the square root of 25, 30 and 50. 
select sqrt(25),sqrt(30),sqrt(50)

-- Find out the square of 5, 15, and 25.
select square(5),SQUARE(15),SQUARE(25)

--Find out the value of PI. 
select PI()

--Find out round value of 157.732 for 2, 0 and -2 decimal points. 
select ROUND(157.732,2), round(157.732,0),round(157.732,-2)

-- Find out exponential value of 2 and 3.
select EXP(2),exp(3)

--Find out logarithm having base e of 10 and 2. 
select log(10,2)

-- Find logarithm base 10 of 5 and 100.
select log10(5), log10(100)

--Find sine, cosine and tangent of 3.1415. 
select sin(3.1415),cos(3.1415), tan(3.1415)

--Find sign of -25, 0 and 25. 
select sign(-25),sign(0),sign(25)

--Generate random number using function.
select RAND()

--string function

--part-A

--Find the length of following. (I) NULL    (II) ‘   hello     ’   (III)  Blank 
select len(NULL),len('   hello     '),len(' ')

--Display your name in lower & upper case. 
select lower('JiNkAl'), upper('JiNkAl')

--Display first three characters of your name. 
select substring('jinkal',0,3)

--Display 3rd to 10th character of your name. 
select substring('jinkal makwana',3,10)

--Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
select replace('abc123efg','123','xyz')
select replace('abcabcabc','cabcabc','5ab5ab5')

--Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9. 
select ascii('a'),ascii('A'),ascii('z'),ascii('Z'),ascii(0),ascii(9)

--Write a query to display character based on number 97, 65,122,90,48,57. 
select char(97),char(65),char(122),char(90),char(48),char(57)

--Write a query to remove spaces from left of a given string ‘     hello world '
select ltrim('     hello world   ')

-- Write a query to remove spaces from right of a given string ‘ hello world ‘.
select rtrim('  hello world         ')
  
--Write a query to display first 4 & Last 5 characters of ‘SQL Server’. 
select left('SQL Server',4)+right('SQL Server',5)

--Write a query to convert a string ‘1234.56’ to number (Use cast and convert function). 
select CAST('1234.56' AS FLOAT)
select convert(float,1234.56)

--Write a query to convert a float 10.58 to integer (Use cast and convert function). 
select cast(10.58 AS INT)
select convert(int,10.58)

--Put 10 space before your name using function. 
select space(10)+'jinkal'

--Combine two strings using + sign as well as CONCAT (). 
select concat('hello',' ','world')
select 'hello'+' '+'world'

--Find reverse of “Darshan”.
select REVERSE('darshan')

--Repeat your name 3 times.
select REPLICATE('jinkal',3)

--part-B

--Display FIRSTNAME and LASTNAME in lowercase and uppercase.
select lower(FIRSTNAME), UPPER(LASTNAME) from EMPLOYEE

--Display full name by combining FIRSTNAME and LASTNAME.
select concat(firstname,' ',lastname) from EMPLOYEE

--Display FIRSTNAME with first 3 characters only. 
select left(firstname,3) from EMPLOYEE

--Display LASTNAME with last 2 characters only. 
select right(lastname,2) from EMPLOYEE

--Display length of each employee’s FIRSTNAME. 
select len(firstname) from EMPLOYEE

--Display FIRSTNAME after replacing ‘A’ with ‘@’.
select replace(firstname,'A','@') from EMPLOYEE

--Display FIRSTNAME and LASTNAME with - between them using CONCAT. 
select concat(firstname,'-',lastname) from EMPLOYEE

--part-C

--Display FIRSTNAME without first and last character. 
SELECT firstname,SUBSTRING(FIRSTNAME, 2, LEN(FIRSTNAME)-2) FROM employee

--Display FIRSTNAME after replacing vowels with '*'. 
SELECT REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(FIRSTNAME, 'a', '*'), 'e', '*'), 'i', '*'), 'o', '*'), 'u', '*') FROM employee

--Display employees where combined length of FIRSTNAME and LASTNAME is greater than 10. 
select concat(firstname,' ',lastname) from EMPLOYEE where len(concat(firstname,' ',lastname))>10

--Display FIRSTNAME and its reverse. 
select firstname,reverse(firstname) from EMPLOYEE

--Display employees whose FIRSTNAME and LASTNAME start with same character using LEFT() 
SELECT FIRSTNAME, LASTNAME FROM employee WHERE LEFT(FIRSTNAME, 1) = LEFT(LASTNAME, 1)
