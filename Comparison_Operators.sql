-- Comparison Operators

-- =, <>, >, <

SELECT *
FROM bakery.customer_orders
WHERE tip = 1; -- "=" operator will results exactly equal to particular value.

SELECT *
FROM bakery.customer_orders
WHERE tip <> 1; -- "<>" operator will results not equal to particular value.

SELECT *
FROM bakery.customer_orders
WHERE tip != 1; -- "!= and <>" operator will results not equal to particular value.


SELECT *
FROM bakery.customer_orders
WHERE tip > 5; -- ">" results the tip which is greater than 5.

SELECT *
FROM bakery.customer_orders
WHERE tip >= 5; -- ">=" results the tip which is greater than and equal 5.

SELECT *
FROM bakery.customer_orders
WHERE tip < 5; -- "<" results the tip which is less than 5.

SELECT *
FROM bakery.customer_orders
WHERE tip <= 5; -- "<=" results the tip which is less than and equal 5.

