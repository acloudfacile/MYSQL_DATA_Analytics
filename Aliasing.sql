# Aliasing - Basically changing the name of the column

Select product_name AS 'Goodie_Name', units_in_stock 'UIS'
FROM products; -- Typically AS is not required to mention we can mention alias column name in quotations.

SELECT units_in_stock * sale_price AS Potential_Revenue
FROM products;

SELECT products.units_in_stock * products.sale_price AS Potential_Revenue
FROM products;

SELECT p.units_in_stock * p.sale_price AS Potential_Revenue
FROM products p