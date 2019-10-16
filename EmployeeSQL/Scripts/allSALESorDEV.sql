--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
--adding title too

DROP VIEW IF EXISTS totaldevemps;
DROP VIEW IF EXISTS totalsalesemps;

CREATE VIEW totalSalesEmps as
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

SELECT * from totalSalesEmps;

SELECT COUNT(dept_emp.emp_no) FROM dept_emp, departments
WHERE dept_emp.dept_no = departments.dept_no AND
departments.dept_name LIKE 'Sales';

CREATE VIEW totalDevEmps as
SELECT
employees.emp_no as EmployeeNO,
employees.last_name as LastName,
employees.first_name as FirstName,
departments.dept_name
FROM departments, employees, dept_emp
WHERE employees.emp_no = dept_emp.emp_no
AND departments.dept_no = dept_emp.dept_no
AND departments.dept_name LIKE '%Development'
ORDER BY employees.emp_no ASC;

SELECT * from totalDevEmps;

SELECT COUNT(dept_emp.emp_no) FROM dept_emp, departments
WHERE dept_emp.dept_no = departments.dept_no AND
departments.dept_name LIKE '%Development';



SELECT * FROM totalSalesEmps

UNION

SELECT * FROM totalDevEmps;