-- Employees whose first names are 'Irena', 'Vidya', or 'Maya'
SELECT * FROM employees 
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
order by first_name;
-- SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

-- AND Gender = Male
SELECT *
FROM employees
WHERE (first_name = 'Irena'
	OR first_name = 'Vidya'
	OR first_name = 'Maya')
		AND gender = 'M'
	order by first_name, last_name ASC;


-- Change the order by clause so that you order by last name before first name. 
-- Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT *
FROM employees
WHERE (first_name = 'Irena'
	OR first_name = 'Vidya'
	OR first_name = 'Maya')
		AND gender = 'M'
	order by last_name, first_name ASC;

-- Employees whose last names start with 'E'

-- Update your queries for employees with 'E' in their last name to sort 
-- the results by their employee number. Your results should not change!

SELECT * FROM employees 
WHERE last_name like '%e%' or last_name like'E%';
order by emp_no DESC;

-- Change the query for employees hired in the 90s and born on Christmas such that
--  the first result is the oldest employee who was hired last. It should be Khun Bernini.

select * from employees 
where hire_date between "1990-01-01" and "1999-12-31" 
and birth_date like "%-12-25"
order by birth_date, hire_date DESC;



-- Employees whose last names start OR end with 'E'
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

-- Employees whose last names start AND end with 'E';
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

-- Employees hired in the 90s
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

-- Employees born on Christmas
SELECT * FROM employees WHERE birth_date LIKE '%-12-25';

-- Employees hired in the 90s AND bord on Christmas
SELECT * FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date BETWEEN '1990-01-01' AND '1999-12-31';

-- Employees with a 'q' in their last name
SELECT * FROM employees WHERE last_name LIKE '%q%';

-- Employees with a 'q' in their last name, but not a 'qu'
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';