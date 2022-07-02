select order_date
from orders 
order by order_date
limit 1;

select min(order_date)
from orders 


--  MIN/MAX is more optimised than ORDER BY and LIMIT https://stackoverflow.com/questions/426731/min-max-vs-order-by-and-limit
--  without index: MIN/MAX take 1 full pass, ORDER BY and LIMIT needs filesort (ie more than 1 full pass)
--  with index: indistinguishable 