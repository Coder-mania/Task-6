-- Task 6: Sales Trend Analysis Using Aggregations

-- Step 1: Create Database and Use It
CREATE DATABASE IF NOT EXISTS sales_analysis;
USE sales_analysis;

-- Step 2: Create Table
CREATE TABLE IF NOT EXISTS online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

-- Step 3: Insert Sample Data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-15', 250.00, 101),
(2, '2024-01-20', 100.00, 102),
(3, '2024-02-05', 150.00, 101),
(4, '2024-02-25', 300.00, 103),
(5, '2024-03-02', 200.00, 102),
(6, '2024-03-12', 180.00, 101),
(7, '2024-04-18', 400.00, 104),
(8, '2024-04-20', 120.00, 101),
(9, '2024-05-05', 220.00, 103),
(10, '2024-05-15', 330.00, 102);


