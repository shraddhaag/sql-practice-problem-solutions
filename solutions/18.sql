SELECT p.product_id, p.product_name, s.company_name 
from products p, suppliers s
where p.supplier_id = s.supplier_id 
order by product_id

-- using an inner join 
SELECT p.product_id, p.product_name, s.company_name 
from products p
join suppliers s
on p.supplier_id = s.supplier_id 
order by product_id

-- there is no difference between a where and inner join: postgres is smart enough to generate the same query plan for both (its good practice to use inner join for readability tho)
-- on when to use a outer left join and when it is futile to do so (1st answer) https://stackoverflow.com/questions/24876673/explain-join-vs-left-join-and-where-condition-performance-suggestion-in-more-de
-- in general how inner and outer left joins work (2nd answer): https://stackoverflow.com/questions/24876673/explain-join-vs-left-join-and-where-condition-performance-suggestion-in-more-de