-- Retail SQL Project: Analysis Queries

-- 1. List all completed orders
SELECT o.order_id, o.status
FROM orders o
WHERE o.status = 'completed';

-- 2. Total number of orders per customer
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.name;

-- 3. Top 5 products by revenue
SELECT p.product_name, SUM(oi.quantity * oi.unit_price) AS order_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY order_revenue DESC
LIMIT 5;

-- 4. Top customers by total revenue
SELECT c.name, SUM(oi.quantity * oi.unit_price) AS total_spent
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;

-- 5. Monthly revenue trend
SELECT DATE_FORMAT(o.order_date, '%Y-%m') AS month,
       SUM(oi.unit_price * oi.quantity) AS revenue
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
GROUP BY month
ORDER BY month;
