-- lag and lead

SELECT *,
LAG(salary) OVER(),
LEAD(salary) OVER()
FROM employees;

SELECT *,
LAG(salary) OVER(PARTITION BY department ORDER BY employee_id)
FROM employees;

SELECT *, lag_col - salary AS pay_discrepancy
FROM (
		SELECT *,
LAG(salary) OVER(PARTITION BY department ORDER BY employee_id) as lag_col
FROM employees) as lag_table;

SELECT *, lag_col - salary AS pay_discrepancy
FROM (
		SELECT *,
LEAD(salary) OVER(PARTITION BY department ORDER BY employee_id) as lag_col
FROM employees) as lead_table;

SELECT *, IF(salary > lag_col, 'more', 'less') as salary_comparison
FROM (
	SELECT *,
LAG(salary) OVER(PARTITION BY department ORDER BY employee_id) as lag_col
FROM employees) as lag_table;


