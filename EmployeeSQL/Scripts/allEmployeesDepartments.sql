--List the department of each 
--employee with the following information: 
--employee number, last name, first name, and department name.

SELECT
employees.emp_no as EmployeeNO,
employees.last_name as LastName,
employees.first_name as FirstName,
departments.dept_name as Department

FROM employees, dept_emp, departments
WHERE employees.emp_no = dept_emp.emp_no AND
dept_emp.dept_no = departments.dept_no
ORDER BY employees.emp_no ASC, departments.dept_name ASC;