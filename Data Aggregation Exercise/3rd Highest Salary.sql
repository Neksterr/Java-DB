SELECT 
    department_id,
    (SELECT DISTINCT
            salary
        FROM
            employees 
            where e.department_id = department_id
        ORDER BY salary DESC
        LIMIT 1 OFFSET 2) as third_highest_salary
FROM
    employees e
GROUP BY department_id
HAVING third_highest_salary is not NULL
ORDER BY department_id;