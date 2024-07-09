-- Aggregate Functions With Group By

SELECT customer_id, SUM(tip) AS total_tips
FROM customer_orders
GROUP BY customer_id;

SELECT customer_id, AVG(tip) AS AVG_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY AVG_tips;

SELECT customer_id, MAX(tip) AS MAX_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY MAX_tips DESC;

SELECT customer_id, MIN(tip) AS MIN_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY MIN_tips DESC;

SELECT customer_id, COUNT(tip) AS COUNT_OF_TIPS
FROM customer_orders
GROUP BY customer_id
ORDER BY COUNT_OF_TIPS DESC;

SELECT * FROM customer_orders;

SELECT first_name, last_name, count(phone)
FROM customers
GROUP By first_name, last_name;

SELECT * FROM customer_orders
ORDER bY product_id;

SELECT product_id,tip, count(tip), count(DISTINCT tip)
from customer_orders
group by product_id, tip
order by product_id;