DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR 
);

CREATE TABLE dept_emp (
	emp_no VARCHAR(6) NOT NULL PRIMARY KEY,
	dept_no VARCHAR(4) NOT NULL FOREIGN KEY,
	from_date DATE,
	to_date DATE  
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL FOREIGN KEY,
	emp_no VARCHAR(6) NOT NULL PRIMARY KEY,
	from_date DATE,
	to_date DATE
);

CREATE TABLE employees (
	emp_no VARCHAR(6) NOT NULL PRIMARY KEY,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR(1),
	hire_date DATE	
);

CREATE TABLE salaries (
	emp_no VARCHAR(6) NOT NULL PRIMARY KEY,
	salary INT NOT NULL,
	from_date DATE,
	to_date DATE
);

CREATE TABLE titles (
	emp_no VARCHAR(6) NOT NULL FOREIGN KEY,
	title VARCHAR,
	from_date DATE,
	to_date DATE
);

SELECT * from departments;
SELECT * from dept_emp;
SELECT * from dept_manager;
SELECT * from employees;
SELECT * from salaries;
SELECT * from titles;

