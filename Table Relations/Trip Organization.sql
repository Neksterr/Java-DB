SELECT 
    vehicles.driver_id as 'drivers_id', vehicle_type,
    concat(campers.first_name,' ', last_name) as driver_name
FROM
    vehicles
        JOIN
    campers ON campers.id = vehicles.driver_id;