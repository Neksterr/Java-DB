INSERT into property_transactions (property_id,
buyer_id,transaction_date,bank_name,iban,is_successful)
SELECT
po.agent_id + day(po.offer_datetime),
po.agent_id + month(po.offer_datetime),
date(po.offer_datetime),
concat('Bank',' ',po.agent_id),
concat('BG',po.price,po.agent_id),
true
from property_offers as po
where po.agent_id <= 2;