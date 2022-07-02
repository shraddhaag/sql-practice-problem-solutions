select count(p.category_id), c.category_name
from products p 
join categories c 
on c.category_id = p.category_id
group by c.category_name
order by count(p.category_id) desc