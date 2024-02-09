SELECT property_id,agent_id,price, offer_datetime
FROM property_offers
where year(property_offers.offer_datetime) = '2021'
ORDER BY price
limit 10;