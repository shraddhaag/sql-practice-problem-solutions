select o.order_id, o.order_date, s.company_name
from orders o 
join shippers s
on o.ship_via = s.shipper_id
and o.order_id < 10300
order by o.order_id asc

-- ?? should 'and' be used or 'where' 