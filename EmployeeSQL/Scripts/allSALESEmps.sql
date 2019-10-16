--List all employees in the Sales department,
--including their employee number, last name, first name, and department name.

SELECT
employees.emp_no as EmployeeNO,
employees.last_name as LastName,
employees.first_name as FirstName,
departments.dept_name
FROM departments, employees, dept_emp
WHERE employees.emp_no = dept_emp.emp_no
AND departments.dept_no = dept_emp.dept_no
AND departments.dept_name LIKE 'Sales'
ORDER BY employees.emp_no ASC;

SELECT COUNT(dept_emp.emp_no) FROM dept_emp, departments
WHERE dept_emp.dept_no = departments.dept_no AND
departments.dept_name LIKE 'Sales';
