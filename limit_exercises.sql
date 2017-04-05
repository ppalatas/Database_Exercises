-- List the first 10 distinct last name sorted in descending order. Your result should look like this:

select last_name 
from employees 
group by last_name DESC, limit 10;

-- Find your query for employees born on Christmas and hired in the 90s from 
-- order_by_exercises.sql. Update it to find just the first 5 employees. Their
--  names should be:

select * from employees 
where hire_date between "1990-01-01" and "1999-12-31"  -- Or " like "199%" "
and birth_date like "%12-25"
order by birth_date, hire_date DESC
limit 5;

-- Try to think of your results as batches, or sets. The first five results are your 
-- first batch. The five after that would be your second batch, etc. 
-- Update the query to find the tenth batch of results. The employee names should be:

select * from employees 
where hire_date between "1990-01-01" and "1999-12-31"  -- Or " like "199%" "
and birth_date like "%12-25"
order by birth_date, hire_date DESC
limit 5 offset 45;


