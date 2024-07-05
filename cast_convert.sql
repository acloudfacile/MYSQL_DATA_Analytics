-- case and convert functions
	# Both CAST and CONVERT functions are used to convert a value from one data type to another. However, there is a slight difference in their syntax and usage.
		-- The CAST function uses the following syntax:
           -- CAST(expression AS type)
		-- The CONVERT function has a more flexible syntax:
		   -- CONVERT(expression, type)


SELECT CAST("2024-01-01" as DATETIME);

SELECT birth_date, 
	   CAST(birth_date as DATETIME) AS Cast_birth_date,
       CONVERT(birth_date, DATETIME) AS Convert_birth_date
FROM customers;

SELECT * FROM customers;
