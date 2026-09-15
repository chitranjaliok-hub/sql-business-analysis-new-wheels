USE new_wheels;

-- Q2. Top 5 vehicle makers preferred by customers
SELECT
    p.vehicle_maker,
    COUNT(DISTINCT o.customer_id) AS customer_count
FROM order_t o
JOIN product_t p USING (product_id)
GROUP BY p.vehicle_maker
ORDER BY customer_count DESC
LIMIT 5;

-- Q3. Most preferred vehicle maker in each state
-- RANK() preserves ties.
SELECT state, vehicle_maker, customer_count
FROM (
    SELECT
        c.state,
        p.vehicle_maker,
        COUNT(DISTINCT o.customer_id) AS customer_count,
        RANK() OVER (
            PARTITION BY c.state
            ORDER BY COUNT(DISTINCT o.customer_id) DESC
        ) AS rnk
    FROM customer_t c
    JOIN order_t o USING (customer_id)
    JOIN product_t p USING (product_id)
    GROUP BY c.state, p.vehicle_maker
) ranked_data
WHERE rnk = 1
ORDER BY state, vehicle_maker;
