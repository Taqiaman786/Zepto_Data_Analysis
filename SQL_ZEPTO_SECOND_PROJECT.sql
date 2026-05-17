CREATE DATABASE SECOND_PROJECT;
USE SECOND_PROJECT;
SELECT * FROM ZEPTO;

--- Q1: Find the top 10 best-value products based on the discount percentage.
select distinct name, mrp, discountpercent
from zepto 
order by discountpercent desc
limit 10;

--- Q2: List all distinct product categories available on Zepto.
SELECT DISTINCT Category
FROM zepto
ORDER BY Category;

--- Q3: How many products are currently out of stock?
SELECT COUNT(*) AS out_of_stock_count
FROM zepto
WHERE outOfStock = TRUE;

--- Q4: Find the top 5 most expensive products by MRP.
SELECT name, Category, mrp
FROM zepto
ORDER BY mrp DESC
LIMIT 5;

--- Q5: Count the total number of products in each category.
SELECT Category,
       COUNT(*) AS product_count
FROM zepto
GROUP BY Category
ORDER BY product_count DESC;

--- Q6: Find all products that have a discount of more than 40%.
SELECT name, Category, discountPercent
FROM zepto
WHERE discountPercent > 40
ORDER BY discountPercent DESC;

--- Q7: Retrieve all products that belong to the 'Beverages' category.
SELECT *
FROM zepto
WHERE Category = 'Beverages';


--- Q8: Count how many products have a weight between 100g and 500g.
SELECT COUNT(*) AS product_count
FROM zepto
WHERE weightInGms BETWEEN 100 AND 500; 

---- Q9: List all products from either 'Chocolates & Candies' or 'Ice Cream & Desserts'.
SELECT name, Category, mrp, discountPercent
FROM zepto
WHERE Category IN ('Chocolates & Candies', 'Ice Cream & Desserts')
ORDER BY Category, name;

--- Q10: Show only the product name and its MRP for all products, ordered alphabetically by name.
SELECT name, mrp
FROM zepto
ORDER BY name ASC;