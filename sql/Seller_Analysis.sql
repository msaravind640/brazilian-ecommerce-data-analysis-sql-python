 -- Top 10 sellers by revenue
 
 SELECT
	sd.seller_id AS Sellers,
    ROUND(SUM(price),2) AS Total_Revenue
FROM sellers_dataset sd
LEFT JOIN order_items_dataset oid
	ON sd.seller_id = oid.seller_id 
GROUP BY Sellers
ORDER BY Total_Revenue DESC LIMIT 10;

-- Average review score per seller

SELECT
	sd.seller_id AS Sellers,
    ROUND(AVG(ord.review_score),2) AS Avg_Review
FROM sellers_dataset sd
LEFT JOIN order_items_dataset oid
	ON sd.seller_id = oid.seller_id
INNER JOIN order_reviews_dataset ord
	ON oid.order_id = ord.order_id
GROUP BY Sellers
HAVING COUNT(oid.order_id)>50
ORDER BY Avg_Review DESC
LIMIT 10;