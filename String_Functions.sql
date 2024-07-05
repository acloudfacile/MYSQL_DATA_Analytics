# String Functions

	SELECT *
		FROM customers;

-- Length Function
	SELECT length('sky'); -- Length will provide how many characters inside the string.

	SELECT first_name, length(first_name) as Len_first
		FROM customers
		ORDER BY Len_first;

-- Upper Function
	SELECT first_name, Upper(first_name) as Up_first
		FROM customers;
  
-- Lower Function
	SELECT first_name, lower(first_name) as low_first
		FROM customers;

-- Using Lower and Upper Function:
	SELECT first_name, Upper(first_name) as Up_first, lower(first_name) as low_first
		FROM customers;

-- Trim Function:
	-- Left Trim or Right Trim - Removes white space on the both sides.

	SELECT '     sky      ', TRIM('     sky.    '), LTRIM('     sky     '), RTRIM('     sky     ');

-- LEFT AND RIGHT FUNCTIONS:

	SELECT left('UMA MAHESHWARA REDDY', 3);
    
	SELECT first_name, LEFT(first_name, 3) as LEFT_name
		FROM customers;

	SELECT right('UMA MAHESHWARA REDDY', 5);

	SELECT first_name, Left(first_name, 3) as LEFT_name, right(first_name, 3) as right_name
		FROM customers;

-- substring
# difference between the left, right string and substring is substring will allow you to start anywhere from the string where as left will allowing you start from beginning and right is towards the end of the string.ALTER

	SELECT substring('Uma Maheswara Reddy', 1,3);

	SELECT phone, substr(phone,1,3), substr(phone,5,3), substr(phone, 9,4)
		FROM customers;

-- Replace:
	SELECT first_name, replace(first_name,'a', 'z') as replace_first_name
		FROM customers;
    
    SELECT phone, replace(phone,'-', '') as replace_phone
		FROM customers;

-- locate:
	SELECT locate('uma', 'uma maheswara reddy');

	SELECT first_name, locate('gie', first_name) AS maggie_location
		FROM customers;
        
--  Concate:
	SELECT concat('Uma',' ', 'Vijji');
    
    SELECT phone, 
		   substr(phone,1,3), 
           substr(phone,5,3), 
		   substr(phone, 9,4),
           concat(substr(phone,1,3), substr(phone,5,3), substr(phone, 9,4))
		FROM customers;


