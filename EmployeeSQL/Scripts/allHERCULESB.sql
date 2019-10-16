--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT
employees.last_name as LastName,
employees.first_name as FirstName

FROM employees
WHERE employees.last_name LIKE 'B%' AND employees.first_name LIKE 'Hercules'
ORDER BY employees.last_name;

SELECT count(employees.first_name) FROM employees
WHERE employees.first_name LIKE 'Hercules' -- count: 255
AND employees.last_name LIKE 'B%'; -- count: 20