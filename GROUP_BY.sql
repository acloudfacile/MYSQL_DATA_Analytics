-- Group By

SELECT *
FROM customer_orders ;

SELECT customer_id, SUM(tip)
FROM customer_orders 
GROUP BY customer_id ;

SELECT product_id, AVG(order_total) AS AVG_Order_Total
FROM customer_orders 
GROUP BY product_id 
ORDER BY AVG_Order_Total DESC;

