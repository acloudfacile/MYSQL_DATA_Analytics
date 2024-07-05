-- Case Statement

SELECT tip, order_total,
		if(tip > 2, order_total * 0.75, order_total * 1.1) as new_total,
        if(tip > 2, 'Amazing!','Cheap...') as tip_rating
        FROM customer_orders;

SELECT * 
	FROM products;
    
Select units_in_stock,
CASE
	WHEN units_in_stock < 20 THEN 'ORDER NOW!'
    WHEN units_in_stock BETWEEN 20 AND 50 THEN 'CHECK IN 3 DAYS!!!!'
    WHEN units_in_stock > 51 THEN 'IN STOCK :)'
END AS 'ORDER STATUS'
FROM products;

Select units_in_stock,
CASE
	WHEN units_in_stock < 20 THEN 'ORDER NOW!'
    WHEN units_in_stock BETWEEN 20 AND 50 THEN 'CHECK IN 3 DAYS!!!!'
    ELSE 'IN STOCK ;)'
END AS 'ORDER STATUS'
FROM products;

SELECT order_id, order_date,
	CASE
		WHEN YEAR(order_date) = year(NOW()) THEN 'Active'
        WHEN YEAR(order_date) = YEAR(NOW()) - 1 THEN 'Last Year'
        ELSE 'Archived'
	END AS 'Years'
    FROM customer_orders;

