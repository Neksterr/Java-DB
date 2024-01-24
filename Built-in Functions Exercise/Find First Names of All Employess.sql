SELECT first_name FROM employees
WHERE department_id IN(3, 10)
AND extract(YEAR FROM hire_date) between 1995 AND 2005
ORDER BY employee_id;