USE shoppulse;

-- 1. Display all sales records
SELECT * FROM sales;

-- 2. Total number of orders
SELECT COUNT(*) AS total_orders
FROM sales;

-- 3. Total revenue
SELECT SUM(quantity * unit_price) AS total_revenue
FROM sales;

-- 4. Average order value
SELECT AVG(quantity * unit_price) AS average_order_value
FROM sales;

-- 5. Number of unique customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM sales;

-- 6. Revenue by product
SELECT
    product_name,
    SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY product_name
ORDER BY total_revenue DESC;

-- 7. Revenue by category
SELECT
    category,
    SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;

-- 8. Units sold by product
SELECT
    product_name,
    SUM(quantity) AS units_sold
FROM sales
GROUP BY product_name
ORDER BY units_sold DESC;

-- 9. Monthly revenue
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS sales_month,
    SUM(quantity * unit_price) AS monthly_revenue
FROM sales
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY sales_month;

-- 10. Repeat customers
SELECT
    customer_id,
    COUNT(order_id) AS order_count
FROM sales
GROUP BY customer_id
HAVING COUNT(order_id) > 1
ORDER BY order_count DESC;

-- 11. Revenue by customer
SELECT
    customer_id,
    SUM(quantity * unit_price) AS customer_revenue
FROM sales
GROUP BY customer_id
ORDER BY customer_revenue DESC;

-- 12. Overall sales summary
SELECT
    COUNT(*) AS total_orders,
    COUNT(DISTINCT customer_id) AS unique_customers,
    SUM(quantity * unit_price) AS total_revenue,
    AVG(quantity * unit_price) AS average_order_value,
    SUM(quantity) AS total_units_sold
FROM sales;