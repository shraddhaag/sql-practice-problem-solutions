-- to get year from date column in postgres:  2 ways -
-- extract(year from order_date) = 1998
-- date_part('year', order_date) = 1998

-- ?? what is the output value type of extract or date_part funcs as type casting is not needed
-- ?? readup about interval type

-- there are various date/time fields in postgres: https://www.postgresql.org/docs/8.2/datatype-datetime.html
-- timestamp takes 8 bytes that stores both time and date (also timezone if that type) 
-- date takes 4 bytes that stores only the date

-- we can do FETCH FIRST X ROWS ONLY https://stackoverflow.com/questions/38467298/how-to-correctly-use-fetch-first-in-postgresql
-- FETCH docs: https://www.postgresql.org/docs/current/sql-fetch.html
-- ?? apparently both generate the same query plan - I doubt it, only the most simplest case is checked in the above question, for cpmplex queries this is bound to change
-- WITH TIES is an intersting usecase to get duplicates: https://www.cybertec-postgresql.com/en/postgresql-limit-vs-fetch-first-rows-with-ties/

select ship_country, AVG(freight) as average_freight
from orders
-- where extract(year from order_date)::int = 1998
where date_part('year', order_date)::int = 1998
group by ship_country
order by AVG(freight) desc
limit 3

