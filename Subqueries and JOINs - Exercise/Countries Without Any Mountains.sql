SELECT 
    COUNT(country_name) AS country_count
FROM
    countries c
        LEFT JOIN
    mountains_countries ON c.country_code = mountains_countries.country_code
WHERE
    mountains_countries.country_code IS NULL;