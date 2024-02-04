SELECT country_code,mountain_range,
peak_name, elevation
from mountains as m
JOIN mountains_countries as mc on m.id = mc.mountain_id
JOIN peaks as p on m.id = p.mountain_id
WHERE
    country_code = 'BG' AND elevation > 2835
ORDER BY elevation DESC;