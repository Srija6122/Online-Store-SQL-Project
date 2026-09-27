USE online_store;

-- 1. Customers who have not placed any orders
SELECT *
FROM Customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM Orders
);


-- 2. Products that have never been ordered
SELECT *
FROM Products
WHERE product_id NOT IN (
    SELECT product_id
    FROM Order_Items
);


-- 3. Products with price above average price
SELECT *
FROM Products
WHERE price > (
    SELECT AVG(price)
    FROM Products
);


-- 4. Customers whose total spending is above average order amount
SELECT c.customer_id, c.name
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING SUM(o.total_amount) > (
    SELECT AVG(total_amount)
    FROM Orders
);


-- 5. Orders with amount above average order amount
SELECT *
FROM Orders
WHERE total_amount > (
    SELECT AVG(total_amount)
    FROM Orders
);