
--PRACTICAL-11

--PART-A

--Write a query to display the current date & time. Label the column Today_Date. 
select GETDATE() AS Today_Date

--Write a query to find new date after 365 day with reference to today. 
SELECT DATEADD(day, 365, GETDATE()) AS NewDate 

--Display the current date in a format that appears as may 5 1994 12:00AM. 
select FORMAT(GETDATE(), 'MMM d yyyy h:mmtt')

--Display the current date in a format that appears as 03 Jan 1995. 
select format(getdate(),'dd MMM yyyy')

--Display the current date in a format that appears as Jan 04, 96. 
select format(getdate(),'MMM dd, yy')

--Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09. 
select DATEDIFF(month,'31-Dec-08','31-Mar-09')

--Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30. 
select DATEDIFF(hour,'25-Jan-12 7:00','26-Jan-12 10:30')

--Write a query to extract Day, Month, Year from given date 12-May-16.
select DATEPART(day,'12-May-16'),DATEPART(month,'12-May-16'),DATEPART(year,'12-May-16')

--Write a query that adds 5 years to current date.
select DATEADD(year,5,getdate())

--Write a query to subtract 2 months from current date. 
select dateadd(month,-2,getdate())

--Extract month from current date using datename () and datepart () function. 
select datepart(month,getdate()),datename(month,getdate())

--Write a query to find out last date of current month. 
select eomonth(getdate())

--Calculate your age in years and months. 
select datediff(year,'2008-06-20',getdate()),datediff(month,'2008-06-20',getdate())

--PART-B
select * from Deposit

--display all records where account date is in the year 2025. 
select * from Deposit where datepart(year,ADATE)=2025

--Display all records where account date is in the month of March. 
select * from Deposit where datepart(month,adate)=2

--Display records where account date is after ‘01-Jan-2025’. 
select * from Deposit where ADATE > '2025-01-01'

--Display records where account date is before ‘01-Jan-2025’. 
select * from Deposit where ADATE < '2025-01-01'

--Display records where day of account date is 1.
select * from Deposit where datepart(day,adate)=1

--Display records where month of account date is greater than 6. 
select * from Deposit where datepart(month,adate) > 6

--Display records where year of account date is 2026. 
select * from Deposit where datepart(year,adate)=2026

--Display number of accounts opened in each year. 
select DATEPART(year,adate),count(*) from Deposit group by DATEPART(year,adate)

--Display number of accounts opened in each month. 
select DATEPART(month,adate),count(*) from Deposit group by DATEPART(month,adate)

--Display maximum amount deposited in each year. 
select DATEPART(year,adate),max(AMOUNT) from Deposit group by DATEPART(year,adate)

--PART-C

-- Display minimum amount deposited in each month. 
select DATEPART(month,adate),max(AMOUNT) from Deposit group by DATEPART(month,adate)

--Display total amount deposited in each year. 
select DATEPART(year,adate),sum(AMOUNT) from Deposit group by DATEPART(year,adate)

--Display records where account date is between ‘01-Mar-2025’ and ‘31-Dec-2025’. 
select * from Deposit where adate between '01-Mar-2025' and '31-Dec-2025'

--Display records where account date is in the current year. 
select * from Deposit where datepart(year,adate) = datepart(year,getdate())

--Display difference in days between today’s date and account date. 
select abs(datediff(day,getdate(),adate)) from Deposit
