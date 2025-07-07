--Task 6.
--SQL_script

--Use EXTRACT(MONTH FROM order_date) for month
SELECT
    ->   EXTRACT(YEAR FROM order_date) AS order_year,
    ->   EXTRACT(MONTH FROM order_date) AS order_month
    -> FROM online_sales;

--GROUP BY year/month
SELECT
    ->   EXTRACT(YEAR FROM order_date) AS order_year,
    ->   EXTRACT(MONTH FROM order_date) AS order_month
    -> FROM online_sales
    -> GROUP BY order_year, order_month;

--Use SUM() for revenue
SELECT
    ->   EXTRACT(YEAR FROM order_date) AS order_year,
    ->   EXTRACT(MONTH FROM order_date) AS order_month,
    ->   SUM(amount) AS total_revenue
    -> FROM online_sales
    -> GROUP BY order_year, order_month;

--Use COUNT(DISTINCT order_id) for order volume
SELECT
    ->   EXTRACT(YEAR FROM order_date) AS order_year,
    ->   EXTRACT(MONTH FROM order_date) AS order_month,
    ->   SUM(amount) AS total_revenue,
    ->   COUNT(DISTINCT order_id) AS total_orders
    -> FROM online_sales
    -> GROUP BY order_year, order_month;

--Use ORDER BY for sorting
SELECT
    ->   EXTRACT(YEAR FROM order_date) AS order_year,
    ->   EXTRACT(MONTH FROM order_date) AS order_month,
    ->   SUM(amount) AS total_revenue,
    ->   COUNT(DISTINCT order_id) AS total_orders
    -> FROM online_sales
    -> GROUP BY order_year, order_month
    -> ORDER BY order_year, order_month;

--Limit results for specific time periods
 SELECT
    ->   EXTRACT(YEAR FROM order_date) AS order_year,
    ->   EXTRACT(MONTH FROM order_date) AS order_month,
    ->   SUM(amount) AS total_revenue,
    ->   COUNT(DISTINCT order_id) AS total_orders
    -> FROM online_sales
    -> WHERE EXTRACT(YEAR FROM order_date) = 2024
    -> GROUP BY order_year, order_month
    -> ORDER BY order_year, order_month;