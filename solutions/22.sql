select p.product_name, p.units_in_stock, p.reorder_level
from products p
where p.units_in_stock < p.reorder_level
order by p.product_id