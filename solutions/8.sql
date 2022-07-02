select o.order_id, o.customer_id, o.ship_country 
from orders o 
where (o.ship_country = 'France' or o.ship_country = 'Belgium')