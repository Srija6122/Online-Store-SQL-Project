USE online_store;

-- 1. Count total products
SELECT COUNT(*) AS total_products
FROM Products;


-- 2. Find average product price
SELECT AVG(price) AS average_price
FROM Products;


-- 3. Calculate total sales
SELECT SUM(total_amount) AS total_sales
FROM Orders;


-- 4. Count total orders
SELECT COUNT(*) AS total_orders
FROM Orders;


-- 5. Find highest product price
SELECT MAX(price) AS highest_price
FROM Products;