SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    name AS 'department_name'
FROM
    employees AS e
        JOIN
    departments ON e.department_id = departments.department_id
WHERE
    name = 'Sales'
ORDER BY employee_id DESC;