# Regular Expression Metacharacters

# [-.^$*+?}|

SELECT *
FROM customers;

SELECT *
FROM customers
WHERE first_name REGEXP 'k';

SELECT *
FROM customers
WHERE first_name REGEXP '[a-z]';

SELECT *
FROM customers
WHERE total_money_spent REGEXP '[0-9]';

SELECT *
FROM customers
WHERE phone REGEXP '.';

SELECT *
FROM customers
WHERE phone REGEXP '6.';

SELECT *
FROM customers
WHERE first_name REGEXP 'k...n';

SELECT *
FROM customers
WHERE first_name REGEXP '^k';

SELECT *
FROM customers
WHERE first_name REGEXP 'n$';

SELECT *
FROM customers
WHERE first_name REGEXP 'Obi.*'; -- here after

SELECT *
FROM customers
WHERE first_name REGEXP 'ke.+';

SELECT *
FROM  customers
WHERE first_name REGEXP 'k.?n';


SELECT *
FROM  customers
WHERE first_name REGEXP 'k.{3}n';

SELECT *
FROM  customers
WHERE first_name REGEXP 'k...n';

SELECT *
FROM  customers
WHERE first_name REGEXP 'kev|fro|ob|mic';



