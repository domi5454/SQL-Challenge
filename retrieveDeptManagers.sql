SELECT
dept_manager.dept_no as DepartmentNO,
departments.dept_name as Department,
dept_manager.emp_no as EmployeeNO,
employees.last_name as LastName,
employees.first_name as FirstName,
titles.title as Title,
dept_manager.from_date as StartDate,
dept_manager.to_date as EndDate

FROM 
dept_manager, 
departments, 
employees,
titles

WHERE 
dept_manager.emp_no = employees.emp_no AND
dept_manager.emp_no = titles.emp_no AND
dept_manager.dept_no = departments.dept_no AND
titles.title NOT LIKE 'Staff'

ORDER BY dept_manager.emp_no ASC;