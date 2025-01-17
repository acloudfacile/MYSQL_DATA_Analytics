# Outer Joins

Select c.customer_id, first_name, co.order_id
	FROM customers c
    JOIN customer_orders co
		ON	c.customer_id = co.customer_id
	ORDER BY c.customer_id, co.order_id;
    
Select c.customer_id, first_name, co.order_id
	FROM customers c
   RIGHT OUTER JOIN customer_orders co
		ON	c.customer_id = co.customer_id
	ORDER BY c.customer_id, co.order_id;

Select c.customer_id, first_name, co.order_id
	FROM customers c
   LEFT OUTER JOIN customer_orders co
		ON	c.customer_id = co.customer_id
	ORDER BY c.customer_id, co.order_id;


    
