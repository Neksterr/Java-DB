SELECT 
    a.town_id, name AS 'town_name', a.address_text
FROM
    addresses as a
        JOIN
    towns ON a.town_id = towns.town_id
HAVING town_name IN ('San Francisco' , 'Sofia', 'Carnation')
ORDER BY a.town_id , a.address_id;