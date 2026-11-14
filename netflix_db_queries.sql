USE netflix_db;

SHOW TABLES;

-- Total Customers
SELECT COUNT(*) AS Total_Customers
FROM netflix_customers;

-- Active customers
SELECT COUNT(*) AS Active_Customers
FROM netflix_customers
WHERE Account_Status = 'Active';

-- Customers by subscription plan
 SELECT Subscription_Plan, COUNT(*)
 AS Customers
 FROM netflix_customers
 GROUP BY Subscription_Plan
 ORDER BY Customers DESC;

-- Revenue by subscription plan
SELECT Subscription_Plan,
SUM(Customer_Revenue) AS Revenue
FROM netflix_customers
GROUP BY Subscription_Plan
ORDER BY Revenue DESC;

-- Popular Genre
SELECT Genre, Avg_Rating,
COUNT(*) AS Views
FROM netflix_customers
GROUP BY Genre, Avg_Rating
ORDER BY Views DESC;

-- Country wise customers
SELECT Country, COUNT(*) AS Total_Viewers
FROM netflix_customers
GROUP BY Country
ORDER BY Total_Viewers DESC;

-- Device Usage
SELECT Device, COUNT(*) AS Users
FROM netflix_customers
GROUP BY Device
ORDER BY Users DESC;

-- Average watch hours by plan
SELECT Subscription_Plan,
ROUND(AVG(Watch_Hours), 2) AS Avg_Watch_Time
FROM netflix_customers
GROUP BY Subscription_Plan
ORDER BY Avg_Watch_Time DESC; 

-- Movie v/s TV show
SELECT Content_Type,
COUNT(*) AS Total
FROM netflix_customers
GROUP BY Content_Type
ORDER BY Total DESC;

-- Top Customers by revenue
SELECT Customer_ID,
Customer_Name,
Age,
Subscription_Plan,
Account_Status,
Content_Type,
Watch_Hours,
Avg_Rating,
Customer_Revenue
FROM netflix_customers
ORDER BY Customer_Revenue DESC
LIMIT 10;

-- Account status
SELECT Account_Status,
COUNT(*) AS Total_Accounts
FROM netflix_customers
GROUP BY Account_Status
ORDER BY Total_Accounts DESC;



