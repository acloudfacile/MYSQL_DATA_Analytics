-- IF Function
-- IF(condition, condition is true do this, condition is false do this)

	Select *
		FROM customer_orders;
	
    SELECT tip,
		if(tip > 2, 'Amazing!','Cheap...') as tip_rating
        FROM customer_orders;
	
    SELECT tip, order_total,
		if(tip > 2, order_total * 0.75, order_total * 1.1) as new_total
        FROM customer_orders;