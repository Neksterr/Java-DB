SELECT department_id,min(salary) AS minimum_salary from employees
WHERE department_id IN(2,5,7) and hire_date > '2000-01-01'
GROUP BY department_id
ORDER BY department_id;