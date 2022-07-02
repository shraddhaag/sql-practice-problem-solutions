select c.country, c.city, count(c.customer_id)
from customers c 
group by c.country, c.city
order by count(c.customer_id) desc