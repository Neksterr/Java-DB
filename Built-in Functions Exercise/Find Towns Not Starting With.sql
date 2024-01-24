SELECT 
    town_id, name
FROM
    towns
WHERE
   substr(name,1,1) NOT REGEXP '[rbd]'
ORDER BY name;