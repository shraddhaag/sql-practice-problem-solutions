select company_name, region 
from customers
order by region asc, customer_id asc

-- column with null values cant be sorted directly in SQL server, CASES are needed: https://docs.microsoft.com/en-us/sql/t-sql/language-elements/case-transact-sql?redirectedfrom=MSDN&view=sql-server-ver16#examples

-- for postgres: read https://www.postgresql.org/docs/current/sql-select.html#SQL-ORDERBY for complete ORDER BY usage 
-- it has NULL LAST or NULLS FIRST that we can specify to sort null values in nullable column values
-- by default if nothing is specified, when ASC -> NULLS LAST and when DESC -> NULLS FIRST ie act as though nulls are larger than non-nulls

-- another point to note: 
-- ORDER BY region ASC, customer_id ASC is not the same as ORDER BY region, customer_id ASC