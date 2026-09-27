USE online_store;

-- 1. Products with price greater than 1000
SELECT *
FROM Products
WHERE price > 1000;

-- 2. Customers from Hyderabad
SELECT *
FROM Customers
WHERE city = 'Hyderabad';

-- 3. Products in Electronics category
SELECT p.*
FROM Products p
JOIN Categories c
ON p.category_id = c.category_id
WHERE c.category_name = 'Electronics';

-- 4. Products added after 2024
SELECT *
FROM Products
WHERE added_date > '2024-12-31';

-- 5. Products with stock quantity greater than 20
SELECT *
FROM Products
WHERE stock_quantity > 20;