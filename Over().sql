-- Over Clause + Partition By

Select *
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id;

Select c.customer_id, first_name, order_total, Max(order_total)
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
GROUP BY c.customer_id, first_name, order_total;

Select c.customer_id, first_name, order_total, Max(order_total) OVER() AS max_order_total
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id;

Select c.customer_id, first_name, order_total, (SELECT MAX(order_total) FROM customer_orders) as max_order_total
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id;
    
Select c.customer_id, 
first_name, 
order_total, 
Max(order_total) OVER(PARTITION BY customer_id) AS max_order_total
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id;
