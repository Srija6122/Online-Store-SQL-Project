USE online_store;

-- 1. Customer orders view
CREATE VIEW customer_orders AS
SELECT c.customer_id,
       c.name,
       o.order_id,
       o.order_date,
       o.total_amount,
       o.status
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id;


-- 2. Product details view
CREATE VIEW product_details AS
SELECT p.product_id,
       p.product_name,
       p.price,
       p.stock_quantity,
       c.category_name,
       p.added_date
FROM Products p
JOIN Categories c
ON p.category_id = c.category_id;


-- 3. Order item details view
CREATE VIEW order_item_details AS
SELECT oi.order_item_id,
       oi.order_id,
       p.product_name,
       oi.quantity,
       oi.price,
       oi.subtotal
FROM Order_Items oi
JOIN Products p
ON oi.product_id = p.product_id;


-- 4. Customer spending view
CREATE VIEW customer_spending AS
SELECT c.customer_id,
       c.name,
       SUM(o.total_amount) AS total_spending
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;


-- 5. Best selling products view
CREATE VIEW best_selling_products AS
SELECT p.product_id,
       p.product_name,
       SUM(oi.quantity) AS total_quantity_sold
FROM Products p
JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name;