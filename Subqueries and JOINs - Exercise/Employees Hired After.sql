SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    name AS 'dept_name'
FROM
    employees AS e
        JOIN
    departments ON e.department_id = departments.department_id
where( name = 'Sales' or name ='Finance') and hire_date > '1999-01-01'
ORDER BY hire_date;