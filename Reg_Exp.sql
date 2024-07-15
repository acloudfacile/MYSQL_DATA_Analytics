-- Regular expression

SELECT * 
FROM customers
WHERE first_name LIKE'%k%';

SELECT * 
FROM customers
WHERE first_name REGEXP 'k';

SELECT first_name, REGEXP_REPLACE(first_name, 'a', 'b')
FROM customers; -- here in first name column the names contains a letter will be replaced with b letter.

SELECT first_name, REGEXP_Like(first_name, 'a')
FROM customers; -- it REGEXP_LIKE will act as boolean function, for suppose in charles letter 'a' is there so output will be 1, in kevin 'a' is not there so the output will be 0.

SELECT first_name, REGEXP_INSTR(first_name, 'a')
FROM customers; -- REGEXP_INSTR shows the location of the letter.

SELECT first_name, REGEXP_SUBSTR(first_name, 'i') 
FROM customers; -- here it will pull out the character in the given column.

