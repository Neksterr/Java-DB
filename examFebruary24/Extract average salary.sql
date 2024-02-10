DELIMITER //

CREATE FUNCTION udf_average_salary_by_position_name (name VARCHAR(40))
RETURNS DECIMAL(19,2)
deterministic
BEGIN
    DECLARE avg_salary DECIMAL(19,2);
    
    SELECT AVG(workers.salary) INTO avg_salary
    FROM workers
    JOIN positions ON workers.position_id = positions.id
    WHERE positions.name = name;
    
    RETURN avg_salary;
END //

DELIMITER ;
