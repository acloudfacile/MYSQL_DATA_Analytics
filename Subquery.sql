-- SUBQUERY

SELECT *
FROM customers ;

SELECT *
FROM customers 
WHERE customer_id IN 
	(Select customer_id
	 FROM customer_orders);
     
SELECT *
FROM customers 
WHERE customer_id IN 
	(Select customer_id
	 FROM customer_orders
     Where tip > 1);
     
SELECT distinct c.customer_id
	FROM customers c
    JOIN customer_orders co
    using(customer_id)
    Where co.tip > 1
    ORDER BY c.customer_id ASC;
    
SELECT AVG(total_money_spent)
FROM customers 
WHERE customer_id IN 
	(Select customer_id
	 FROM customer_orders
     Where tip > 1);
     
SELECT *
FROM customers
WHERE total_money_spent > (Select AVG(total_money_spent) FROM customers);

SELECT *
FROM customers;



