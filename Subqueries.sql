# subqueries in SELECT and FROM Statements

SELECT product_id,
quantity,
(select AVG(quantity) FROM ordered_items) avg_quantity
FROM ordered_items;


Select * FROM ordered_items;

Select product_id,
quantity,
(Select AVG(quantity) FROM ordered_items) as avg_quantity,
quantity/(Select SUM(quantity) FROM ordered_items) * 100 as percentage_quantity
FROM ordered_items;

Select product_id,
quantity,
(Select SUM(quantity) FROM ordered_items) as sum_quantity,
quantity/(Select SUM(quantity) FROM ordered_items) * 100 as percentage_quantity
FROM ordered_items;

SELECT product_id, avg_quantity FROM (SELECT product_id,
quantity,
(select AVG(quantity) FROM ordered_items) avg_quantity
FROM ordered_items) as derived_table;

SELECT * FROM (select SUM(quantity) FROM ordered_items as avg_quantity) as derived_table;