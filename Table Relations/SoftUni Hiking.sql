SELECT routes.starting_point as 'route_starting_point',routes.end_point as 'route_ending_point',
leader_id,
concat(first_name,' ' ,last_name) as 'leader_name'
from routes
join campers on routes.leader_id = campers.id;