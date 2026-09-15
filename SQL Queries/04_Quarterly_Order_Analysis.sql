USE new_wheels;

-- Q6. Trend of number of orders by quarter
SELECT
    quarter_number,
    COUNT(DISTINCT order_id) AS order_count
FROM order_t
GROUP BY quarter_number
ORDER BY quarter_number;
