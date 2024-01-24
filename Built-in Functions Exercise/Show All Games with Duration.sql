SELECT name AS game,
CASE
when EXTRACT(HOUR FROM start) < 12 then 'Morning'
when EXTRACT(HOUR FROM start) < 18 then 'Afternoon'
when EXTRACT(HOUR FROM start) < 24 then 'Evening'
END AS 'Part of the Day',
CASE
when duration <= 3 then 'Extra Short'
when duration <= 6 then 'Short'
when duration <= 10 then 'Long'
ELSE 'Extra Long'
END AS 'Duration'
FROM games;

