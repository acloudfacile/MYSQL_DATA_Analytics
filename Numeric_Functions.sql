-- Numeric Functions

SELECT * 
FROM products ;

SELECT Round(123.456789);
SELECT Round(123.456789, 2);
-- Round function works with the rounding the decimal number.

SELECT sale_price, Round(sale_price,1) 
FROM products;

SELECT CEILING(5.7); -- rounds to nearest whole number. Here Output is 6.
SELECT floor(5.7); -- floor rounds down. Here output is 5.

SELECT sale_price, CEILING(sale_price) as Ceiling_sale_price, floor(sale_price) as Floor_sale_price
FROM products;

SELECT ABS(4.6) -- Absolute Positive value of Integer. Here the output is 4.6 only. Even if we use ABS(-4.6) output will be 4.6 Only.


