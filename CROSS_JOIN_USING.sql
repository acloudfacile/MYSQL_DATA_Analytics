-- CROSS JOIN

SELECT * FROM customers;

SELECT * FROM customer_orders;

SELECT c.customer_id, c.first_name, co.customer_id, co.order_id 
	FROM customers c
    CROSS JOIN customer_orders co
    ORDER BY c.customer_id;

-- Natural Join

SELECT *
FROM products p
Natural JOIN customer_orders co
ORDER BY p.product_id;
    
SELECT *
FROM products p
JOIN customer_orders co
	ON p.product_id = co.product_id
ORDER BY p.product_id;

-- USING

SELECT c.customer_id, c.first_name, co.customer_id, co.order_id 
	FROM customers c
    LEFT OUTER JOIN customer_orders co
		USING(customer_id)
    ORDER BY c.customer_id;