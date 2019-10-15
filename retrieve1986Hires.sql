SELECT 
employees.last_name as LastName,
employees.first_name as FirstName,
employees.hire_date as Hired,
employees.emp_no as EmployeeNO

FROM employees
WHERE employees.hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER by employees.hire_date ASC, employees.last_name ASC;