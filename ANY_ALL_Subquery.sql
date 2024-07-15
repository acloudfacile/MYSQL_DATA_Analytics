
# All and ANY Statements
Select * 
FROM Ordered_items;


Select MAX(quantity * unit_price) as total_order_price
FROM Ordered_items
Where shipper_id = 1;



Select order_id, quantity, unit_price, (quantity * unit_price) AS total_order_price
FROM Ordered_items
WHERE (quantity * unit_price) > (Select MAX(quantity * unit_price) as total_order_price
FROM Ordered_items
Where shipper_id = 1);

Select order_id, quantity, unit_price, (quantity * unit_price) AS total_order_price
FROM Ordered_items
WHERE (quantity * unit_price) > ALL (Select (quantity * unit_price) as total_order_price
                                     FROM Ordered_items
								     Where shipper_id = 1);

Select order_id, quantity, unit_price, (quantity * unit_price) AS total_order_price
FROM Ordered_items
WHERE (quantity * unit_price) >= ANY (Select (quantity * unit_price) as total_order_price
                                     FROM Ordered_items
								     Where shipper_id = 1);