CREATE DATABASE customer_churn;
USE churn_db;
SHOW TABLES;
SELECT COUNT(*) FROM customers;
SELECT Churn, COUNT(*)
FROM customers
GROUP BY Churn;


-- 1. Tenure VS Churn
SELECT 
	churn, 
    ROUND(AVG(Tenure),2) as avg_tenure
FROM customers
GROUP BY Churn;

-- 2. Support Calls Impact 
SELECT 	
	Churn, 
    ROUND(AVG(`Support Calls`), 2) as avg_calls
FROM Customers
GROUP BY Churn;
-- 3. Payment Delay 
SELECT 
	Churn, 
    Round(AVG(`Payment Delay`), 2) AS avg_delay
From customers
GROUP BY Churn;

-- 4. Contract Length
SELECT
	`Contract Length`,
    COUNT(*) AS total, 
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS churned,
    ROUND(SUM(CASE WHEN Churn = 1 then 1 else 0 end) * 100.0/COUNT(*), 2) AS churn_rate
FROM customers
GROUP BY `Contract Length`;

-- 5. Subscription Type
DESCRIBE customers;
-- 
SELECT 
    `Subscription Type`,
    COUNT(*) AS total,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS churned,
    ROUND(
        SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customers
GROUP BY `Subscription Type`;

-- Identify High-Risk Customers
SELECT * 
FROM customers
WHERE Churn = 0
AND Tenure < 10
AND `Support Calls` > 5
AND `Payment Delay` > 10;
 