select p.product_name, (p.units_in_stock + p.units_on_order), p.reorder_level
from products p
where (p.units_in_stock + p.units_on_order) <= p.reorder_level
and p.discontinued = 0
order by p.product_id