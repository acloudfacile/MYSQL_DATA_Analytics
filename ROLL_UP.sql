-- ROLL UP

SELECT customer_id, SUM(tip) as total_tips
FROM customer_orders
GROUP BY customer_id WITH ROLLUP;

SELECT *
FROM customer_orders;

SELECT product_id, sum(order_total) as sum_total
FROM customer_orders
GROUP BY product_id WITH ROLLUP;

