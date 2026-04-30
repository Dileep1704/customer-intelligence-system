-- Total Revenue
SELECT SUM(payment_value) AS total_revenue
FROM cleaned;

-- Monthly Revenue
SELECT year_month, SUM(payment_value) AS revenue
FROM cleaned
GROUP BY year_month
ORDER BY year_month;

-- Top Categories
SELECT product_category_name,
       SUM(payment_value) AS revenue
FROM cleaned
GROUP BY product_category_name
ORDER BY revenue DESC
LIMIT 10;

-- Region-wise Sales
SELECT customer_state,
       SUM(payment_value) AS revenue
FROM cleaned
GROUP BY customer_state
ORDER BY revenue DESC
LIMIT 10;

-- Repeat Customer Rate
SELECT 
    COUNT(CASE WHEN order_count > 1 THEN 1 END) * 100.0 / COUNT(*) AS repeat_rate
FROM (
    SELECT customer_unique_id, COUNT(order_id) AS order_count
    FROM cleaned
    GROUP BY customer_unique_id
) t;