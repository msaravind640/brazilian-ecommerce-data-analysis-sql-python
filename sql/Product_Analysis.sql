-- Top 10 product categories by revenue

USE brazil_ecommerce;

SELECT 
	pd.product_category_name AS Category,
    ROUND(SUM(oid.price),2) as Total_Revenue
FROM order_items_dataset oid
LEFT JOIN products_dataset pd
	ON oid.product_id = pd.product_id
INNER JOIN orders_dataset od
	ON oid.order_id = od.order_id
WHERE od.order_status = 'delivered'
GROUP BY Category
ORDER BY Total_Revenue DESC LIMIT 10;

--  Top 10 categories by number of orders

SELECT 
	pd.product_category_name as Category,
    COUNT(distinct oid.order_id) AS Total_Orders
FROM order_items_dataset oid
LEFT JOIN products_dataset pd
	ON oid.product_id = pd.product_id
INNER JOIN orders_dataset od
	ON oid.order_id = od.order_id
WHERE od.order_status = 'delivered'
GROUP BY Category
ORDER BY Total_Orders DESC LIMIT 10;

-- Average review score per product category

SELECT
	pd.product_category_name AS Category,
    ROUND(AVG(ord.review_score),2) AS AVG_Review
FROM products_dataset pd
LEFT JOIN order_items_dataset oid
	ON pd.product_id = oid.product_id
INNER JOIN order_reviews_dataset ord
	ON oid.order_id = ord.order_id
INNER JOIN orders_dataset od
	ON oid.order_id = od.order_id
WHERE od.order_status = 'delivered'
GROUP BY Category
HAVING COUNT(distinct od.order_id)>50
ORDER BY AVG_Review DESC LIMIT 10;