select contact_title, count(contact_title)
from customers
group by contact_title
order by count(contact_title) desc