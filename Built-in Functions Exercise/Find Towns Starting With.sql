SELECT 
    town_id, name
FROM
    towns
WHERE
   substr(name,1,1)  REGEXP '[mkbe]'
ORDER BY name;