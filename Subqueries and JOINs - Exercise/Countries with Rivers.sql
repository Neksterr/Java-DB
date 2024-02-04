SELECT 
    c.country_name,r.river_name from countries c
    LEFT JOIN countries_rivers cr on c.country_code = cr.country_code
    left JOIN rivers r
    on cr.river_id = r.id
    where c.continent_code = 'AF'
    ORDER BY c.country_name
    LIMIT 5;