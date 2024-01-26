SELECT 
    COUNT(*) AS appetizers
FROM
    products
WHERE
    category_id = 2 AND price > 8
ORDER BY category_id;
