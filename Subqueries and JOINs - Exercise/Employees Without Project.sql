SELECT 
    e.employee_id, first_name
FROM
    employees AS e
        LEFT JOIN
    employees_projects ON e.employee_id = employees_projects.employee_id
WHERE
    project_id IS NULL
ORDER BY e.employee_id DESC
LIMIT 3;