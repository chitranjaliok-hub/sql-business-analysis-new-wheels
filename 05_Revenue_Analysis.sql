USE new_wheels;

-- Q7. Quarterly net revenue and quarter-over-quarter percentage change
SELECT
    quarter_number,
    net_revenue,
    LAG(net_revenue) OVER (ORDER BY quarter_number) AS previous_quarter_revenue,
    ROUND(
        (net_revenue - LAG(net_revenue) OVER (ORDER BY quarter_number))
        / LAG(net_revenue) OVER (ORDER BY quarter_number) * 100,
        2
    ) AS qoq_percentage_change
FROM (
    SELECT
        quarter_number,
        SUM(quantity * vehicle_price * (1 - discount)) AS net_revenue
    FROM order_t
    GROUP BY quarter_number
) quarterly_revenue
ORDER BY quarter_number;

-- Q8. Quarterly orders and total net revenue
SELECT
    quarter_number,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(quantity * vehicle_price * (1 - discount)), 2) AS total_net_revenue
FROM order_t
GROUP BY quarter_number
ORDER BY quarter_number;
