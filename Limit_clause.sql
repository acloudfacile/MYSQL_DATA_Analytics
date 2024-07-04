# LIMIT Clause

SELECT * 
FROM customers
LIMIT 5; -- As the name specifies by using the LIMIT 5 only the first 5 rows will be displayed and always limit will be coming at the end of the query.

SELECT * 
FROM customers
WHERE total_money_spent > 10000
LIMIT 5; -- Here the output will be 1 record as only one person spent more than 10000, even though we given limit as 5 it will return the one record. Here Limit 5 in the sense if the records are more than 5 then only it will limit the records to 5.

SELECT * 
FROM customers
ORDER BY total_money_spent DESC
LIMIT 5; 

SELECT * 
FROM customers
ORDER BY total_money_spent DESC
LIMIT 5, 2; -- first argument '5' is like where we gonna start and second argument '2' is like number of rows going to return. so in this case it is going to return the 2 records after 5.

SELECT * 
FROM customers
ORDER BY total_money_spent DESC
LIMIT 2, 5; 

