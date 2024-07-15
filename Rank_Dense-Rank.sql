-- Rank and Dense_Rank

SELECT * 
FROM Employees;

SELECT *, RANK() OVER(PARTITION BY department ORDER BY salary DESC)
FROM Employees;

SELECT *
FROM (
SELECT *, RANK() OVER(PARTITION BY department ORDER BY salary DESC) as rank_row
FROM Employees) AS ranked
Where rank_row < 3;

SELECT *, 
RANK() OVER(PARTITION BY department ORDER BY salary DESC) as rank_row,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) as dense_rank_row
FROM Employees;

