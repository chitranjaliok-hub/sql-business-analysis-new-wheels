USE new_wheels;

-- Q4A. Overall average customer rating
SELECT
    ROUND(AVG(rating_value), 2) AS overall_avg_rating
FROM (
    SELECT CASE
        WHEN customer_feedback = 'Very Bad' THEN 1
        WHEN customer_feedback = 'Bad' THEN 2
        WHEN customer_feedback = 'Okay' THEN 3
        WHEN customer_feedback = 'Good' THEN 4
        WHEN customer_feedback = 'Very Good' THEN 5
    END AS rating_value
    FROM order_t
) AS rating_table;

-- Q4B. Average rating in each quarter
SELECT
    quarter_number,
    ROUND(AVG(rating_value), 2) AS avg_rating_per_quarter
FROM (
    SELECT
        quarter_number,
        CASE
            WHEN customer_feedback = 'Very Bad' THEN 1
            WHEN customer_feedback = 'Bad' THEN 2
            WHEN customer_feedback = 'Okay' THEN 3
            WHEN customer_feedback = 'Good' THEN 4
            WHEN customer_feedback = 'Very Good' THEN 5
        END AS rating_value
    FROM order_t
) AS quarterly_rating_table
GROUP BY quarter_number
ORDER BY quarter_number;

-- Q5. Percentage distribution of feedback by quarter
SELECT
    quarter_number,
    ROUND(100.0 * SUM(CASE WHEN customer_feedback = 'Very Bad' THEN 1 ELSE 0 END) / COUNT(*), 4) AS very_bad_percentage,
    ROUND(100.0 * SUM(CASE WHEN customer_feedback = 'Bad' THEN 1 ELSE 0 END) / COUNT(*), 4) AS bad_percentage,
    ROUND(100.0 * SUM(CASE WHEN customer_feedback = 'Okay' THEN 1 ELSE 0 END) / COUNT(*), 4) AS okay_percentage,
    ROUND(100.0 * SUM(CASE WHEN customer_feedback = 'Good' THEN 1 ELSE 0 END) / COUNT(*), 4) AS good_percentage,
    ROUND(100.0 * SUM(CASE WHEN customer_feedback = 'Very Good' THEN 1 ELSE 0 END) / COUNT(*), 4) AS very_good_percentage
FROM order_t
GROUP BY quarter_number
ORDER BY quarter_number;
