USE online_store;

-- 1. Top 5 best-selling products
SELECT p.product_name,
       SUM(oi.quantity) AS total_quantity_sold
FROM Products p
JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 5;


-- 2. Customers with the most orders
SELECT c.customer_id,
       c.name,
       COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_orders DESC;


-- 3. Monthly sales report
SELECT YEAR(order_date) AS year,
       MONTH(order_date) AS month,
       SUM(total_amount) AS monthly_sales
FROM Orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;


-- 4. Category with highest revenue
SELECT c.category_name,
       SUM(oi.subtotal) AS total_revenue
FROM Categories c
JOIN Products p
ON c.category_id = p.category_id
JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY c.category_id, c.category_name
ORDER BY total_revenue DESC
LIMIT 1;


-- 5. Customer spending analysis
SELECT c.customer_id,
       c.name,
       COUNT(o.order_id) AS total_orders,
       SUM(o.total_amount) AS total_spending,
       AVG(o.total_amount) AS average_order_value
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
ORDER BY total_spending DESC;