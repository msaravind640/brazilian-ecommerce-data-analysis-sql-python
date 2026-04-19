use brazil_ecommerce;

-- Distribution of review scores (1–5)

SELECT 
	review_score,
    COUNT(DISTINCT review_id) AS total_reviews,
    ROUND(COUNT(DISTINCT review_id) * 100 /SUM(COUNT(DISTINCT review_id)) OVER(), 1) as percentage
FROM order_reviews_dataset
GROUP BY review_score
ORDER BY review_score;

-- Average Review Score for Late vs On-Time Deliveries

WITH categorization_orders AS (
	SELECT 
		order_id,
        CASE
			WHEN DATE(order_estimated_delivery_date) > DATE(order_delivered_customer_date)
				THEN 'Early'
			WHEN DATE(order_estimated_delivery_date) = DATE(order_delivered_customer_date)
				THEN 'On Time'
			ELSE 'Late'
		END AS delivery_category
	FROM orders_dataset
    WHERE order_status='delivered') 
SELECT
	co.delivery_category,
    ROUND(AVG(ord.review_score),2) AS Avg_Review,
    COUNT(distinct ord.order_id) AS Total_Orders
FROM categorization_orders co
JOIN order_reviews_dataset ord
	ON co.order_id = ord.order_id
GROUP BY co.delivery_category
ORDER BY Avg_Review DESC;