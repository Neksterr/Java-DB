SELECT 
    e.employee_id,
    concat(e.first_name,' ', e.last_name) as employee_name,
    concat(employees.first_name,' ', employees.last_name) as manager_name,
      name as department_name
FROM
    employees AS e
      JOIN
    employees ON e.manager_id = employees.employee_id
        JOIN
    departments ON e.department_id = departments.department_id

ORDER BY e.employee_id
limit 5;