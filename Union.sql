-- Unions

SELECT  * 
FROM customers;

SELECT *
FROM Products;

SELECT  first_name, Last_name
FROM customers
UNION
SELECT product_id, product_name
FROM Products;

SELECT  first_name, last_name,'OLD' as Label
FROM customers
WHERE YEAR(birth_date) < 1950
UNION
SELECT  first_name, last_name, 'Good Tipper'
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
WHERE tip > 3
UNION DISTINCT
SELECT  first_name, last_name, 'Big Spender'
FROM customers
WHERE total_money_spent > 1000
ORDER By first_name, last_name;

SELECT  first_name, last_name,'OLD' as Label
FROM customers
WHERE YEAR(birth_date) < 1950
UNION ALL
SELECT  first_name, last_name,'OLD' as Label
FROM customers
WHERE YEAR(birth_date) < 1950

