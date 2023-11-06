#-- Select Distinct Customer ID
SELECT * FROM Online_Sales 
WHERE CustomerID = 17850;

#-- Total Quantity of Sales
SELECT Product_Category, SUM(Quantity) AS Total_Quantity
FROM Online_Sales
GROUP BY Product_Category
ORDER BY total_quantity desc;

#-- Counting Trend Line / Transaction Date From May 2019 - September 2019
SELECT Transaction_Date, COUNT(Transaction_id) AS Transaction_Total FROM Online_Sales
WHERE Transaction_Date BETWEEN '1-5-2019' AND '31-9-2019'
GROUP BY Transaction_Date
ORDER BY Transaction_Date ASC;

#-- Counting Coupon Status
SELECT Coupon_Status, count(*) AS Transaction_Count
FROM online_sales
GROUP BY Coupon_Status;

#-- Total Sales Revenue
SELECT Round(SUM(Avg_Price * Quantity))
FROM Online_Sales 

#-- Impact Coupon Status
SELECT coupon_status, Round(AVG(Quantity * Avg_Price)) AS Average_Revenue
FROM Online_Sales
GROUP BY Coupon_Status;

#-- Total Customer by Gender
SELECT DISTINCT (a.Transaction_ID), b.Gender 
	FROM Online_Sales AS a
	JOIN CustomersData AS b
	ON a.CustomerID = b.CustomerID ;
	
#-- Transaction Total Based on Gender
SELECT b.Gender,COUNT(a.Transaction_ID) 
	FROM Online_Sales AS a
	JOIN CustomersData AS b
	ON a.CustomerID = b.CustomerID ;
	
#-- Revenue Based on Location
SELECT b.location, Round(SUM(Quantity * Avg_Price)) AS Total_Revenue
FROM Online_Sales AS a
	JOIN CustomersData AS b
	ON a.CustomerID = b.CustomerID ;
	
