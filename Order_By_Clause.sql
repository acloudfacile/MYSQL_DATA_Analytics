# Order By Clause:

SELECT * 
FROM customers
ORDER BY first_name; -- Here first_name column is ordered by ascending by default.

SELECT * 
FROM customers
ORDER BY first_name DESC; -- Here first_name column is ordered by Descending by adding DESC to to the first_name.

SELECT * 
FROM customers
ORDER BY state, total_money_spent; -- Here the output will be ascending for both the columns.

SELECT * 
FROM customers
ORDER BY state, total_money_spent DESC; -- This DESC will be effecting only one column that is total_money_spent.

SELECT * 
FROM customers
ORDER BY state DESC, total_money_spent DESC; -- Here both the columns will be descending order.

SELECT * 
FROM customers
ORDER BY 8 DESC, 9 ASC; -- instead of writing columns names we can also use the column Position number for the queries but it is not a good practise for the long run.