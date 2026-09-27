USE online_store;

-- Categories
INSERT INTO Categories VALUES
(1, 'Electronics', 'Electronic products'),
(2, 'Clothing', 'Clothing products'),
(3, 'Home Appliances', 'Home appliances'),
(4, 'Books', 'Books and study materials'),
(5, 'Accessories', 'Computer and mobile accessories');

-- Customers
INSERT INTO Customers VALUES
(1, 'Rahul', 'rahul@gmail.com', '9876543210', 'Hyderabad', '2024-01-15'),
(2, 'Sravani', 'sravani@gmail.com', '9876543211', 'Hyderabad', '2024-02-10'),
(3, 'Arjun', 'arjun@gmail.com', '9876543212', 'Bangalore', '2024-03-05'),
(4, 'Priya', 'priya@gmail.com', '9876543213', 'Chennai', '2024-04-12'),
(5, 'Kiran', 'kiran@gmail.com', '9876543214', 'Hyderabad', '2024-05-20'),
(6, 'Anjali', 'anjali@gmail.com', '9876543215', 'Mumbai', '2024-06-18'),
(7, 'Vijay', 'vijay@gmail.com', '9876543216', 'Delhi', '2024-07-22'),
(8, 'Sneha', 'sneha@gmail.com', '9876543217', 'Hyderabad', '2024-08-11'),
(9, 'Rohit', 'rohit@gmail.com', '9876543218', 'Pune', '2024-09-14'),
(10, 'Divya', 'divya@gmail.com', '9876543219', 'Hyderabad', '2024-10-01');

-- Products
INSERT INTO Products VALUES
(1, 'Laptop', 55000, 10, 1, '2024-01-10'),
(2, 'Smartphone', 25000, 20, 1, '2024-02-15'),
(3, 'Headphones', 1500, 30, 1, '2024-03-05'),
(4, 'T-Shirt', 800, 50, 2, '2024-04-12'),
(5, 'Jeans', 1800, 25, 2, '2024-05-20'),
(6, 'Washing Machine', 32000, 8, 3, '2024-06-10'),
(7, 'Mixer Grinder', 4500, 15, 3, '2024-07-18'),
(8, 'Python Book', 900, 40, 4, '2024-08-05'),
(9, 'SQL Book', 1200, 35, 4, '2024-09-10'),
(10, 'Keyboard', 1200, 20, 1, '2025-01-15');

-- Orders
INSERT INTO Orders VALUES
(1, 1, '2024-01-20', 55000, 'Completed'),
(2, 2, '2024-02-18', 25000, 'Completed'),
(3, 3, '2024-03-10', 1500, 'Completed'),
(4, 1, '2024-04-15', 1800, 'Completed'),
(5, 4, '2024-05-25', 32000, 'Completed'),
(6, 5, '2024-06-15', 4500, 'Pending'),
(7, 6, '2024-07-20', 1200, 'Completed'),
(8, 2, '2024-08-12', 2100, 'Cancelled'),
(9, 8, '2024-09-18', 1200, 'Completed'),
(10, 1, '2024-10-20', 900, 'Completed');

-- Order Items
INSERT INTO Order_Items VALUES
(1, 1, 1, 1, 55000, 55000),
(2, 2, 2, 1, 25000, 25000),
(3, 3, 3, 1, 1500, 1500),
(4, 4, 5, 1, 1800, 1800),
(5, 5, 6, 1, 32000, 32000),
(6, 6, 7, 1, 4500, 4500),
(7, 7, 9, 1, 1200, 1200),
(8, 8, 4, 2, 800, 1600),
(9, 9, 10, 1, 1200, 1200),
(10, 10, 8, 1, 900, 900);