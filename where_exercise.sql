-- Employees whose first names are 'Irena', 'Vidya', or 'Maya'
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

-- AND Gender = Male
SELECT *
FROM employees
WHERE first_name = 'Irena'
	OR first_name = 'Vidya'
	OR first_name = 'Maya'
		AND gender = 'M';

-- Employees whose last names start with 'E'
SELECT * FROM employees WHERE LEFT(last_name, 1) = 'E';

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