-- The northwind postgres database already has birth_date in `date` format.
-- This solution has SQL for casting date to timestamp and  the other way round


-- Casting date to timestamptz
SELECT first_name, last_name, title, birth_date::timestamptz
FROM employees
ORDER BY birth_date ASC;

-- Casting timestamptz to date
SELECT first_name, last_name, title, birth_date::date
FROM employees
ORDER BY birth_date ASC;
