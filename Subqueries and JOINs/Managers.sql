SELECT 
    d.manager_id AS 'employee_id',
    CONCAT(first_name, ' ', last_name) AS full_name,
    d.department_id,
    name AS 'department_name'
FROM
    departments as d
    join employees on d.manager_id = employees.employee_id
ORDER BY d.manager_id
LIMIT 5;