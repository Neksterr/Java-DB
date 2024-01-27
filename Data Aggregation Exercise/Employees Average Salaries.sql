CREATE TABLE highest_paid_employees
SELECT * from employees
WHERE salary > 30000;
DELETE from highest_paid_employees
where manager_id = 42;
UPDATE highest_paid_employees set salary = salary +5000 
where department_id = 1;
SELECT department_id, avg(salary) as avg_salary
from highest_paid_employees
GROUP BY department_id
ORDER BY department_id;