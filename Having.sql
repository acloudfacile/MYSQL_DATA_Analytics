# HAVING vs Where Clause

SELECT customer_id, sum(tip) as total_tips
FROM customer_orders
where totat_tips > 5
GROUP BY customer_id;

SELECT customer_id, sum(tip) as total_tips
FROM customer_orders
GROUP BY customer_id
HAVING total_tips > 5 ;

SELECT customer_id, sum(order_total) as total
FROM customer_orders
GROUP BY customer_id
HAVING SUM(order_total) > 5 
ORDER BY 2