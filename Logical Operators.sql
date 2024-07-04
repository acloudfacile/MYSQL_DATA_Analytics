-- Logical Operators -  And, Or, Not
USE bakery;

SELECT *
FROM customers
WHERE state = 'PA' AND total_money_spent > 1000; #in AND operator both the conditions should be true met.

SELECT *
FROM customers
WHERE state = 'PA' OR total_money_spent > 1000; #in OR operator atleast one condition should be true or met.

SELECT *
FROM customers
WHERE (state = 'PA' OR city = 'New York') AND total_money_spent > 1000; -- Here customers who live in PA ot in city new york should spend more than $1000.

SELECT *
FROM customers
WHERE (state = 'PA' AND total_money_spent > 1000) OR birth_date > '1998-01-01';


SELECT *
FROM customers
WHERE NOT state = 'PA' -- is equal to WHERE state != 'PA'