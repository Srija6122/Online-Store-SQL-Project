USE online_store;

-- 1. Add a new customer
DROP PROCEDURE IF EXISTS add_customer;

DELIMITER //

CREATE PROCEDURE add_customer(
    IN p_customer_id INT,
    IN p_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_phone VARCHAR(15),
    IN p_city VARCHAR(255),
    IN p_registration_date DATE
)
BEGIN
    INSERT INTO Customers
    (customer_id, name, email, phone, city, registration_date)
    VALUES
    (p_customer_id, p_name, p_email, p_phone, p_city, p_registration_date);
END //

DELIMITER ;


-- 2. Update product price
DROP PROCEDURE IF EXISTS update_product_price;

DELIMITER //

CREATE PROCEDURE update_product_price(
    IN p_product_id INT,
    IN p_new_price DECIMAL(10,2)
)
BEGIN
    UPDATE Products
    SET price = p_new_price
    WHERE product_id = p_product_id;
END //

DELIMITER ;


-- 3. Get orders by customer ID
DROP PROCEDURE IF EXISTS customer_orders_by_id;

DELIMITER //

CREATE PROCEDURE customer_orders_by_id(
    IN p_customer_id INT
)
BEGIN
    SELECT *
    FROM Orders
    WHERE customer_id = p_customer_id;
END //

DELIMITER ;


-- 4. Calculate total sales
DROP PROCEDURE IF EXISTS calculate_total_sales;

DELIMITER //

CREATE PROCEDURE calculate_total_sales()
BEGIN
    SELECT SUM(total_amount) AS total_sales
    FROM Orders;
END //

DELIMITER ;


-- 5. Get products by category
DROP PROCEDURE IF EXISTS products_by_category;

DELIMITER //

CREATE PROCEDURE products_by_category(
    IN p_category_id INT
)
BEGIN
    SELECT *
    FROM Products
    WHERE category_id = p_category_id;
END //

DELIMITER ;