select (unit_price * quantity):: int, order_id, product_id, unit_price, quantity
from order_details
order by order_id, product_id