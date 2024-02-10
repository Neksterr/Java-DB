SELECT 
    name, COUNT(w.id) AS armed_workers
FROM
    preserves p
        LEFT JOIN
    workers w ON p.id = w.preserve_id
WHERE
    w.is_armed = 1
GROUP BY p.name
ORDER BY armed_workers DESC , p.name;