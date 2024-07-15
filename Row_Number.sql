-- ROW_Number
Select c.customer_id, 
first_name, 
order_total, 
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_total ASC) AS row_num
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
Where row_num < 3;

Select *
FROM (
Select c.customer_id, 
first_name, 
order_total, 
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_total ASC) AS row_num
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id) AS row_table
Where row_num < 3;