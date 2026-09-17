CREATE DATABASE Zepto;
USE Zepto;

SELECT * FROM Zepto;

-- 1) Top 10 product by their total revenue. 
SELECT ï»¿Product_Name AS Product_Name, MAX(Total_Revenue) AS Total_Revenue FROM Zepto
GROUP BY ï»¿Product_Name
LIMIT 10;

-- 2) Sum of Original price and Current price by Category. 
SELECT Category, SUM(Original_Price) AS Original_Price_Sum, SUM(Current_Price)  FROM Zepto
GROUP BY Category ;

-- 3) Sum of Total Revenue.
SELECT SUM(total_revenue) AS Total_Revenue FROM Zepto;

-- 4) Average Amount Spend by Customer by City.
SELECT City, 
COUNT(Orders) AS Order_Count, 
SUM(Orders) AS Sum_of_Orders, 
AVG(Orders) AS Average_Order 
FROM Zepto
GROUP BY City;

-- 5) Minimum and Maximum Discount by the product category. 
SELECT Category, 
MIN(Discount) AS Minimum_Discount, 
MAX(Discount) AS Maximum_Discount 
FROM Zepto
GROUP BY Category;

-- 6) Customers with Active and Inactive Status. 
SELECT Influencer_Active, COUNT(*)AS Total_Count FROM Zepto
WHERE Influencer_Active in ("yes", "no")
GROUP BY Influencer_Active;

-- 7) Top City by their Orders. 
SELECT City, 
SUM(Orders) AS Order_Sum 
FROM Zepto
GROUP BY City;

-- 8) Top City by their Revenue.
SELECT City, 
SUM(Total_Revenue) AS Revenue 
FROM Zepto
GROUP BY City; 

-- 9) Which category is popular in which city. 
SELECT City, 
Category, 
SUM(Total_Revenue) AS Revenue 
FROM Zepto
GROUP BY Category, 
City
LIMIT 5;

-- 10) Comparision between total orders by Active and Inactive Customer / Influencer 
SELECT Influencer_Active, 
SUM(Orders) AS Sum_of_Orders 
FROM Zepto
GROUP BY Influencer_Active;

