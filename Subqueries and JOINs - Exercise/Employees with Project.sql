SELECT 
    e.employee_id, first_name, name AS 'project_name'
FROM
    employees AS e
        RIGHT JOIN
    employees_projects ON e.employee_id = employees_projects.employee_id
        JOIN
    projects ON employees_projects.project_id = projects.project_id
WHERE
    DATE(start_date) > '2002-08-13'
        AND end_date IS NULL
ORDER BY first_name , project_name
LIMIT 5;