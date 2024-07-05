# Date and Date Format Functions:

	SELECT *
		FROM customers;

-- NOW(), curdate(), curtime(): Now gives the current date and time, CURDATE gives only current date, CURTIME gives only current time. This are built in functions.
	SELECT NOW(), curdate(), curtime();
    
    SELECT year(NOW()), month(NOW()), day(NOW());
    
    SELECT *
		FROM customer_orders
        WHERE year(order_date) = year(now()) - 2;
	
    SELECT *
		FROM customer_orders
        WHERE month(order_date) = month(now()) - 2;
	
-- DayName:
	SELECT dayname(now());
    
    SELECT order_date, dayname(order_date), monthname(order_date), year(order_date), yearweek(order_date)
		FROM customer_orders;

-- Date Format:
	SELECT birth_date, date_format(birth_date, '%M,%d - %Y')
		FROM customers;
	
    	SELECT birth_date, date_format(birth_date, '%m-%D-%Y')
		FROM customers;
	