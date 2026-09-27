USE online_store;

-- 1. Customers and their orders
SELECT c.name, o.order_id, o.order_date, o.total_amount, o.status
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id;


-- 2. Products and ordered quantities
SELECT p.product_name, oi.quantity
FROM Products p
JOIN Order_Items oi
ON p.product_id = oi.product_id;


-- 3. Orders with customer details
SELECT o.order_id,
       o.order_date,
       o.total_amount,
       o.status,
       c.customer_id,
       c.name,
       c.email,
       c.phone,
       c.city
FROM Orders o
JOIN Customers c
ON o.customer_id = c.customer_id;


-- 4. Products with category names
SELECT p.product_id,
       p.product_name,
       p.price,
       c.category_name
FROM Products p
JOIN Categories c
ON p.category_id = c.category_id;


-- 5. Customer, product and order details
SELECT c.name AS customer_name,
       p.product_name,
       oi.quantity,
       oi.subtotal
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
JOIN Order_Items oi
ON o.order_id = oi.order_id
JOIN Products p
ON oi.product_id = p.product_id;