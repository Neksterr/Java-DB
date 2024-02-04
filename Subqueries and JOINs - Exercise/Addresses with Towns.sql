SELECT 
    e.first_name, e.last_name, name AS 'town', address_text
FROM
    employees AS e
        JOIN
    addresses ON e.address_id = addresses.address_id
        JOIN
    towns ON addresses.town_id = towns.town_id
ORDER BY first_name , last_name
LIMIT 5;