use brazil_ecommerce;

--  Average actual delivery time vs estimated delivery time

SELECT
	ROUND(AVG(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp)),1) AS Avg_Actual_Delivery_Time,
    ROUND(AVG(DATEDIFF(order_estimated_delivery_date, order_purchase_timestamp)),1) AS Avg_Estimated_Delivery_Time
FROM orders_dataset
WHERE order_status='delivered';

-- Overall delivery rate

WITH categorization_orders AS (
	SELECT 
		order_id AS Orders,
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
		delivery_category,
        count(*) AS Total_orders,
        ROUND(COUNT(*) *100/SUM(COUNT(*)) OVER(),2) AS Percentage
	FROM categorization_orders
    GROUP BY delivery_category
    ORDER BY Percentage DESC;
    
-- Delivery Rate State-wise Analysis

with categorization_orders AS (
	select 
		od.order_id,
        cd.customer_state,
        case
			when date(od.order_delivered_customer_date) < date(od.order_estimated_delivery_date)
				then 'Early'
			when date(od.order_delivered_customer_date) = date(od.order_estimated_delivery_date)
				then 'On-Time'
			else 'Delay'
		end as delivery_category
	from orders_dataset od
    inner join customers_dataset cd
		on od.customer_id = cd.customer_id
	where od.order_status='Delivered')
    
    select 
		customer_state,
        delivery_category,
        count(*) as total_orders,
        round(count(*)*100/sum(count(*)) over(partition by customer_state), 2) as percentage
	from categorization_orders
    group by customer_state, delivery_category
    order by customer_state, percentage desc;
    
-- Delivery Rate Monthly Analysis

WITH categorization_orders AS (
	SELECT 
		DATE_FORMAT(order_purchase_timestamp, '%m-%Y') AS orders_month,
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
	orders_month, 
    delivery_category,
    count(*) AS total_orders,
    round(count(*)*100/sum(count(*)) OVER(PARTITION BY orders_month),2) as percentage
from categorization_orders
group by orders_month, delivery_category
order by orders_month desc;