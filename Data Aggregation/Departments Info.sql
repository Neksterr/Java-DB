SELECT 
    department_id, COUNT(*) AS ' Number of eployees'
FROM
    employees
    GROUP BY department_id
ORDER BY department_id , 'Number of employees';