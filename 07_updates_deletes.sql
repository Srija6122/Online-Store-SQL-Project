USE online_store;

-- 1. Update Laptop price
UPDATE Products
SET price = 60000
WHERE product_id = 1;


-- 2. Change customer email
UPDATE Customers
SET email = 'rahul.new@gmail.com'
WHERE customer_id = 1;


-- 3. Change Keyboard category to Electronics
UPDATE Products
SET category_id = 1
WHERE product_id = 10;


-- 4. Delete cancelled orders
DELETE FROM Orders
WHERE status = 'Cancelled';


-- 5. Delete customers who have no orders
DELETE FROM Customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM Orders
);