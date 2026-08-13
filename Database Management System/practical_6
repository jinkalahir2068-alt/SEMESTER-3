---practical-6---

---part-A

--Copy all records from DEPOSIT where AMOUNT > 3000 into HIGH_AMOUNT. 
select * 
into high_amount 
from Deposit
where AMOUNT>3000

--Copy only CNAME and AMOUNT from DEPOSIT where BNAME = 'MAVDI' into MAVDI_CUSTOMERS.  
select CNAME,amount
into MAVDI_CUSTOMERS
from Deposit
where BNAME='MAVDI'

--Copy records of DEPOSIT where ADATE > '2025-01-01' into RECENT_DEPOSITS.
select * 
into RECENT_DEPOSITS
from Deposit
where ADATE> '2025-01-01'

--Copy distinct BNAME from DEPOSIT into BRANCH_LIST.  
select distinct BNAME
into BRANCH_LIST
from Deposit

--Copy top 5 records from DEPOSIT into TOP_DEPOSITS. 
select top 5 *
into TOP_DEPOSITS
from Deposit

--Copy records where AMOUNT between 2000 and 6000 into MID_RANGE.  
select *
into MID_RANGE
from Deposit
where AMOUNT between 2000 and 6000

--Copy distinct branch names from DEPOSIT into UNIQUE_BRANCH. 
select distinct  BNAME
into UNIQUE_BRANCH
from Deposit

--Copy records with NULL branch into NO_BRANCH_ASSIGNED. 
select *
into NO_BRANCH_ASSIGNED
from Deposit
where BNAME is null

--Copy all records and rename AMOUNT as BALANCE into DEPOSIT_COPY.  
select ACtno,CNAME,BNAME,AMOUNT as balance,ADATE
 into DEPOSIT_COPY
from Deposit

--Copy records where BNAME in ('MAVDI','BEDI') into SELECTED_BRANCH. 
select *
into SELECTED_BRANCH
from Deposit
where BNAME in ('mavdi','bedi')

---part-B

--create a new table STUDENT_BACKUP from STUDENT without copying any data. 
select * 
into STUDENT_BACKUP 
from STUDENT
where 1=2

--Copy SNAME and CITY where BRANCH = 'COMPUTER' into CS_STUDENTS.
select SNAME ,city
into CS_STUDENTS
from student
where BRANCH = 'COMPUTER'

--Copy top 3 students based on SPI into TOPPER_LIST. 
select top 3 * 
into TOPPER_LIST
from STUDENT
order by spi 

--Copy distinct CITY from STUDENT into CITY_LIST. 
select distinct city
 into CITY_LIST
from student

--Copy records where STDID between 103 and 108 into MID_STUDENTS.  
select *
into MID_STUDENTS
from STUDENT
where STDID between 103 and 108

--part-C

--copy records with NULL branch into NULL_BRANCH_STUDENTS. 
select *
into NULL_BRANCH_STUDENTS
from student
where branch is null

--Copy all STUDENT records and rename SPI as PERFORMANCE into STUDENT_COPY.
select STDID,SNAME,CITY,branch,spi as PERFORMANCE
into STUDENT1_COPY
from student

-- Copy records where CITY in ('RAJKOT','SURAT') into CITY_WISE.  
select *
into CITY_WISE
from student
where city in('RAJKOT','SURAT')

--Copy students where BRANCH <> 'CIVIL' into NON_CIVIL_STUDENTS.  
select * 
into NON_CIVIL_STUDENTS
from STUDENT
where branch='civil'

--Copy selected columns (SNAME, CITY) from STUDENT table into a new table. 
select sname,city 
into MY_NEW_TABLE
from STUDENT
