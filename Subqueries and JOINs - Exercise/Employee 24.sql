SELECT 
    e.employee_id,
    first_name,
    IF(start_date >= '2005-01-01',
        NULL,
        name) AS 'project_name'
FROM
    employees AS e
      JOIN
    employees_projects ON e.employee_id = employees_projects.employee_id
        JOIN
    projects ON employees_projects.project_id = projects.project_id
WHERE
    e.employee_id = 24
ORDER BY project_name;