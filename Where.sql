-- Where Clause

SELECT * 
FROM customers
WHERE total_money_spent > 3000;

SELECT * 
FROM customers
WHERE city = 'Scranton' ;

SELECT * 
FROM customers
WHERE birth_date > '1985-01-01' ;

-- When date column is assigned wiht "date" data type then we have to provide full details including "yyyy-mm-dd" if you try to filter with "yyyy" only result will be a error.

SELECT * 
FROM products
WHERE units_in_stock < 30;

