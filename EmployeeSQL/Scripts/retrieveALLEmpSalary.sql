SELECT 
employees.emp_no as EmployeeNO,
employees.last_name as LastName,
employees.first_name as FirstName,
employees.gender as Gender,
salaries.salary as Salary

FROM employees,salaries
WHERE employees.emp_no = salaries.emp_no
ORDER by EmployeeNO;