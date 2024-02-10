SELECT concat(first_name,' ', last_name) as full_name ,
datediff('2024-01-01', start_date) AS days_of_experience
FROM workers
WHERE DATEDIFF('2024-01-01', start_date) > 1825
ORDER BY days_of_experience DESC
LIMIT 10;