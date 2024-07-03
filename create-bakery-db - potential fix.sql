-- Select Statement cases
USE bakery;

Select * 
FROM customers;

SELECT first_name, 
last_name, 
birth_date, 
phone, 
city, 
state,
total_money_spent,
(total_money_spent + 100) * 10
FROM customers;

-- PEMDAS - parenthesis, exponent, multiplication, division, addition and subtraction.

SELECT DISTINCT state, city
FROM customers
