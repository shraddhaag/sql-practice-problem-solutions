select ship_country, AVG(freight) as average_freight
from orders
group by ship_country
order by AVG(freight) desc
limit 3

-- aliases work with AS in postgres