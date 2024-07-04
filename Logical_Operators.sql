-- Logical Operators -  And, Or, Not, In, Between
USE bakery;

# AND Operator usage:
SELECT *
FROM customers
WHERE state = 'PA' AND total_money_spent > 1000; #in AND operator both the conditions should be true met.

# OR Operator usage:
SELECT *
FROM customers
WHERE state = 'PA' OR total_money_spent > 1000; #in OR operator atleast one condition should be true or met.

# AND & OR Operator usage:
SELECT *
FROM customers
WHERE (state = 'PA' OR city = 'New York') AND total_money_spent > 1000; -- Here customers who live in PA ot in city new york should spend more than $1000.

SELECT *
FROM customers
WHERE (state = 'PA' AND total_money_spent > 1000) OR birth_date > '1998-01-01';

# NOT Operator usage:
SELECT *
FROM customers
WHERE NOT state = 'PA'; -- is equal to WHERE state != 'PA'

# IN Operator usage:
SELECT *
FROM customers
WHERE state = 'PA' OR state = 'TX' OR state = 'IL'; -- Here we can use IN instead of multiple OR's

SELECT *
FROM customers
WHERE state IN('PA', 'TX', 'IL');

-- IN operator is useful only when we are searching for multiple values in on column, but when we try to search with multiple columns it wont work.

SELECT *
FROM customers
WHERE first_name IN('Kevin', 'Kelly', 'Frodo');

# NOT IN Operator usage:
SELECT *
FROM customers
WHERE first_name NOT IN('Kevin', 'Kelly', 'Frodo'); -- Shows the first_name apart from Kevin', 'Kelly', 'Frodo'.

# Between Operator usage:
SELECT *
FROM customers
WHERE total_money_spent BETWEEN 500 AND 1000; -- Here in our output only the total_money_spent between 500 and 1000 will be displayed.


SELECT *
FROM customers
WHERE total_money_spent BETWEEN 534 AND 1009; -- Here even the range values given are included in the output.

SELECT *
FROM customers
WHERE total_money_spent >= 534 AND total_money_spent <= 1009; -- Basically we will get the same output of above query where we used Between. This is other way to get the same output but Between operator simplies the query.

SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2020-01-01'; -- Basically there should be proper order while describing the values it should be low to high.

SELECT *
FROM customers
WHERE city BETWEEN 'Dallas' AND 'scranton'; -- Between Operator using for strings.

# Like Operator usage:
	-- % - zero, one, or multiple characters
    -- _ - single character
SELECT *
FROM customers
WHERE first_name LIKE 'K%'; -- Here we gonna get output like K and everything after K in first_name and it is also not a case sensitive.

SELECT *
FROM customers
WHERE first_name LIKE '%n'; -- Here we gonna get output like ending with 'n' and everything before 'n' in first_name and it is also not a case sensitive.

SELECT *
FROM customers
WHERE first_name LIKE '%n%'; -- Here we gonna get output like if 'n' is present in the any part of the first_name will be displayed as output.


SELECT *
FROM customers
WHERE first_name LIKE '__n'; -- Here the ‘_’ indicates that only one letter comes before it. For example, if the name is ‘kn,’ ‘kn’ will be displayed. If there are more letters before ‘n,’ then you have to provide more ‘__.’ For example, for ‘don,’ we should provide ‘__n.

# More Examples of Like Operator.
SELECT *
FROM customers
WHERE first_name LIKE '_o_'; 

SELECT *
FROM customers
WHERE first_name LIKE '__a__n'; 

SELECT *
FROM customers
WHERE last_name LIKE 's_____%'; 

SELECT *
FROM customers
WHERE phone LIKE '975-%';

