SELECT 
    e.employee_id,
    e.first_name,
    e.salary,
    name AS 'department_name'
FROM
    employees AS e
        JOIN
    departments ON e.department_id = departments.department_id
HAVING salary > 15000
ORDER BY e.department_id DESC
LIMIT 5;