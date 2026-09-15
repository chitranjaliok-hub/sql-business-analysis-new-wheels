USE new_wheels;

-- Q1A. Total number of customers who have placed orders
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM order_t;

-- Q1B. Distribution of customers across states
SELECT
    c.state,
    COUNT(DISTINCT c.customer_id) AS customer_count
FROM customer_t c
JOIN order_t o USING (customer_id)
GROUP BY c.state
ORDER BY customer_count DESC;
