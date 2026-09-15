USE new_wheels;

-- Q9. Average discount by credit card type
SELECT
    c.credit_card_type,
    ROUND(AVG(o.discount), 2) AS avg_discount
FROM customer_t c
JOIN order_t o USING (customer_id)
GROUP BY c.credit_card_type
ORDER BY avg_discount DESC;

-- Q10. Average shipping time by quarter
-- MySQL-compatible equivalent of the report's julianday calculation.
SELECT
    quarter_number,
    ROUND(AVG(DATEDIFF(ship_date, order_date)), 2) AS avg_shipping_days
FROM order_t
GROUP BY quarter_number
ORDER BY quarter_number;
