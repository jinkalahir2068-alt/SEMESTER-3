/* =====================================================
   LAB 5
   ALTER, RENAME, DELETE, TRUNCATE AND DROP COMMANDS
   ===================================================== */


/* =====================================================
   PART - A : ALTER / RENAME
   ===================================================== */

-- 1. Add column state VARCHAR(20)
ALTER TABLE DEPOSIT
ADD state VARCHAR(20);


-- 2. Add columns city VARCHAR(20) and pincode INT
ALTER TABLE DEPOSIT
ADD city VARCHAR(20),
ADD pincode INT;


-- 3. Change size of cname from VARCHAR(50) to VARCHAR(35)
ALTER TABLE DEPOSIT
MODIFY cname VARCHAR(35);


-- 4. Change data type of amount from DECIMAL to INT
ALTER TABLE DEPOSIT
MODIFY amount INT;


-- 5. Delete state column
ALTER TABLE DEPOSIT
DROP COLUMN state;


-- 6. Rename column actno to ano
ALTER TABLE DEPOSIT
RENAME COLUMN actno TO ano;


-- 7. Rename column bname to branch_name
ALTER TABLE DEPOSIT
RENAME COLUMN bname TO branch_name;


-- 8. Rename table DEPOSIT to DEPOSIT_DETAIL
RENAME TABLE DEPOSIT TO DEPOSIT_DETAIL;


-- 9. Add column ifsc_code VARCHAR(15)
ALTER TABLE DEPOSIT_DETAIL
ADD ifsc_code VARCHAR(15);


-- 10. Change size of cname from VARCHAR(50) to VARCHAR(30)
ALTER TABLE DEPOSIT_DETAIL
MODIFY cname VARCHAR(30);


/* =====================================================
   PART - B
   ===================================================== */

-- 11. Rename column adate to aopendate
ALTER TABLE DEPOSIT_DETAIL
RENAME COLUMN adate TO aopendate;


-- 12. Delete column aopendate
ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN aopendate;


-- 13. Rename column cname to customer_name
ALTER TABLE DEPOSIT_DETAIL
RENAME COLUMN cname TO customer_name;


-- 14. Add column country VARCHAR(20)
ALTER TABLE DEPOSIT_DETAIL
ADD country VARCHAR(20);


-- 15. Add column account_type VARCHAR(15)
ALTER TABLE DEPOSIT_DETAIL
ADD account_type VARCHAR(15);


/* =====================================================
   PART - C
   ===================================================== */

-- 16. Change data type of pincode from INT to BIGINT
ALTER TABLE DEPOSIT_DETAIL
MODIFY pincode BIGINT;


-- 17. Delete column account_type
ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN account_type;


-- 18. Rename column amount to balance
ALTER TABLE DEPOSIT_DETAIL
RENAME COLUMN amount TO balance;


-- 19. Add column status VARCHAR(10)
ALTER TABLE DEPOSIT_DETAIL
ADD status VARCHAR(10);


-- 20. Change table name DEPOSIT_DETAIL to bank_deposit
RENAME TABLE DEPOSIT_DETAIL TO bank_deposit;


/* =====================================================
   DELETE / TRUNCATE / DROP COMMANDS
   ===================================================== */


/* ---------- FROM DEPOSIT : PART - A ---------- */

-- 1. Delete all records having amount <= 3000
DELETE FROM DEPOSIT
WHERE amount <= 3000;


-- 2. Delete all accounts of 'BEDI' branch customer
DELETE FROM DEPOSIT
WHERE bname = 'BEDI';


-- 3. Delete accounts having account number > 102
--    and less than 109
DELETE FROM DEPOSIT
WHERE actno > 102
AND actno < 109;


-- 4. Delete accounts whose branch is 'BEDI' or 'MADHAPAR'
DELETE FROM DEPOSIT
WHERE bname IN ('BEDI', 'MADHAPAR');


-- 5. Delete accounts where amount is 8000
--    and account opened after 01-01-2025
DELETE FROM DEPOSIT
WHERE amount = 8000
AND adate > '2025-01-01';


-- 6. Delete accounts whose account branch is NULL
DELETE FROM DEPOSIT
WHERE bname IS NULL;


-- 7. Delete account where amount = 7000,
--    name = CHARMI and branch = SHITAL PARK
DELETE FROM DEPOSIT
WHERE amount = 7000
AND cname = 'CHARMI'
AND bname = 'SHITAL PARK';


-- 8. Delete remaining records using DELETE command
DELETE FROM DEPOSIT;


-- 9. Delete all records using TRUNCATE
TRUNCATE TABLE DEPOSIT;


-- 10. Remove DEPOSIT table using DROP
DROP TABLE DEPOSIT;


/* ---------- FROM STUDENT : PART - B ---------- */

-- 11. Delete all students whose stdid > 105
DELETE FROM STUDENT
WHERE stdid > 105;


-- 12. Delete records where branch is NULL
--     and name is NOT NULL
DELETE FROM STUDENT
WHERE branch IS NULL
AND name IS NOT NULL;


-- 13. Delete records where SPI < 9 and city is RAJKOT
DELETE FROM STUDENT
WHERE SPI < 9
AND city = 'RAJKOT';


-- 14. Delete records whose branch name is not empty
DELETE FROM STUDENT
WHERE branch <> '';


-- 15. Delete all records of STUDENT table using TRUNCATE
TRUNCATE TABLE STUDENT;
