
CREATE TABLE CUSTOMER_ALL (
    ORDERID INT PRIMARY KEY,
    CNAME VARCHAR(50),
    PRODUCT VARCHAR(50),
    CATEGORY VARCHAR(50),
    AMOUNT INT,
    ORDERYEAR INT,
    CITY VARCHAR(50)
);

INSERT INTO CUSTOMER_ALL
(ORDERID, CNAME, PRODUCT, CATEGORY, AMOUNT, ORDERYEAR, CITY)
VALUES
(101, 'RAHUL', 'LAPTOP', 'ELECTRONICS', 65000, 2024, 'RAJKOT'),
(102, 'PRIYA', 'MOBILE', 'ELECTRONICS', 25000, 2023, 'SURAT'),
(103, 'AMIT', 'TABLE', 'FURNITURE', 12000, 2022, 'AHMEDABAD'),
(104, 'NEHA', 'CHAIR', 'FURNITURE', 8000, 2024, 'BARODA'),
(105, 'VISHAL', 'TV', 'ELECTRONICS', 45000, 2025, 'MORBI'),
(106, 'RIYA', 'SOFA', 'FURNITURE', 30000, 2023, 'SURAT'),
(107, 'MEHUL', 'AC', 'ELECTRONICS', 40000, 2022, 'RAJKOT'),
(108, 'KRUNAL', 'BED', 'FURNITURE', 40000, 2025, 'JAMNAGAR');

--Display top 3 highest amount orders. 
WITH CTE AS (
    SELECT TOP 3 * FROM CUSTOMER_ALL
)
SELECT *
FROM CTE
ORDER BY AMOUNT DESC


--Display second highest order amount. 
WITH CTE AS (
    SELECT DISTINCT AMOUNT
    FROM CUSTOMER_ALL
)
SELECT AMOUNT
FROM CTE
ORDER BY AMOUNT DESC


--Display customers whose order amount is greater than category average amount. 
WITH CTE AS (
    SELECT CATEGORY, AVG(AMOUNT) AS AVG_AMOUNT
    FROM CUSTOMER_ALL
    GROUP BY CATEGORY
)
SELECT C.*
FROM CUSTOMER_ALL C
JOIN CTE T
ON C.CATEGORY = T.CATEGORY
WHERE C.AMOUNT > T.AVG_AMOUNT;

--Display categories having average amount greater than 30000. 
WITH CTE AS (
    SELECT CATEGORY, AVG(AMOUNT) AS AVG_AMOUNT
    FROM CUSTOMER_ALL
    GROUP BY CATEGORY
)
SELECT *
FROM CTE
WHERE AVG_AMOUNT > 30000;

--Display highest amount order from each category. 
WITH CTE AS (
    SELECT *,
           RANK() OVER (
               PARTITION BY CATEGORY
               ORDER BY AMOUNT DESC
           ) AS R
    FROM CUSTOMER_ALL
)
SELECT *
FROM CTE
WHERE R = 1;

--Display lowest amount order from each category. 
WITH CTE AS (
    SELECT *,
           RANK() OVER (
               PARTITION BY CATEGORY
               ORDER BY AMOUNT ASC
           ) AS R
    FROM CUSTOMER_ALL
)
SELECT *
FROM CTE
WHERE R = 1;

--Display categories having more than 3 orders. 
WITH CTE AS (
    SELECT CATEGORY, COUNT(*) AS TOTAL_ORDERS
    FROM CUSTOMER_ALL
    GROUP BY CATEGORY
)
SELECT *
FROM CTE
WHERE TOTAL_ORDERS > 3;

--Display city-wise total order amount. 
WITH CTE AS (
    SELECT CITY, SUM(AMOUNT) AS TOTAL_AMOUNT
    FROM CUSTOMER_ALL
    GROUP BY CITY
)
SELECT *
FROM CTE;

--Display category having highest average order amount. 
WITH CTE AS (
    SELECT CATEGORY, AVG(AMOUNT) AS AVG_AMOUNT
    FROM CUSTOMER_ALL
    GROUP BY CATEGORY
)
SELECT *
FROM CTE
WHERE AVG_AMOUNT = (
    SELECT MAX(AVG_AMOUNT)
    FROM CTE
);

-- Display cumulative order amount in ascending order of amount.
WITH CTE AS (
    SELECT *,
           SUM(AMOUNT) OVER (
               ORDER BY AMOUNT
               ROWS BETWEEN UNBOUNDED PRECEDING
               AND CURRENT ROW
           ) AS CUMULATIVE_AMOUNT
    FROM CUSTOMER_ALL
)
SELECT *
FROM CTE
ORDER BY AMOUNT

--Display category-wise top 2 highest amount orders. 
WITH CTE AS (
    SELECT *,
           DENSE_RANK() OVER (
               PARTITION BY CATEGORY
               ORDER BY AMOUNT DESC
           ) AS R
    FROM CUSTOMER_ALL
)
SELECT *
FROM CTE
WHERE R <= 2;

--Display customers whose amount is closest to category average amount. 
WITH CTE AS (
    SELECT *,
           AVG(AMOUNT) OVER (
               PARTITION BY CATEGORY
           ) AS AVG_AMOUNT
    FROM CUSTOMER_ALL
),
CTE2 AS (
    SELECT *,
           ABS(AMOUNT - AVG_AMOUNT) AS DIFFERENCE
    FROM CTE
),
CTE3 AS (
    SELECT *,
           RANK() OVER (
               PARTITION BY CATEGORY
               ORDER BY DIFFERENCE
           ) AS R
    FROM CTE2
)
SELECT *
FROM CTE3
WHERE R = 1;

-- Display previous, current and next order amount together. 
WITH CTE AS (
    SELECT ORDERID, CNAME, AMOUNT,
           LAG(AMOUNT) OVER (
               ORDER BY ORDERID
           ) AS PREVIOUS_AMOUNT,
           LEAD(AMOUNT) OVER (
               ORDER BY ORDERID
           ) AS NEXT_AMOUNT
    FROM CUSTOMER_ALL
)
SELECT *
FROM CTE;

--Display customers whose amount is greater than previous customer's amount. 
WITH CTE AS (
    SELECT ORDERID, CNAME, AMOUNT,
           LAG(AMOUNT) OVER (
               ORDER BY ORDERID
           ) AS PREVIOUS_AMOUNT
    FROM CUSTOMER_ALL
)
SELECT *
FROM CTE
WHERE AMOUNT > PREVIOUS_AMOUNT;

--Display customers whose rank and dense rank are different. 
WITH CTE AS (
    SELECT ORDERID, CNAME, AMOUNT,
           RANK() OVER (
               ORDER BY AMOUNT DESC
           ) AS R,
           DENSE_RANK() OVER (
               ORDER BY AMOUNT DESC
           ) AS DR
    FROM CUSTOMER_ALL
)
SELECT *
FROM CTE
WHERE R <> DR;
