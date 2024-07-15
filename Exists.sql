-- Exists

SELECT * 
FROM customers
WHERE customer_id IN ( SELECT customer_id
						FROM customer_orders);

SELECT * 
FROM customers
WHERE EXISTS
(SELECT customer_id
  FROM customer_orders);

SELECT * 
FROM customers c
WHERE EXISTS
(SELECT customer_id
  FROM customer_orders
  Where customer_id = c.customer_id);