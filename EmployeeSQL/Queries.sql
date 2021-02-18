--Query for employee number, last name, first name, sex and salary - join employees and salaries tables
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no = employees.emp_no;

--Query for first name, last name and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE right (hire_date,4) = '1986';

--Query for manager of each department - department number, department name, manager's employee number, last name, first name
--Need joins of dept_manager, employees, and departments tables
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM employees
INNER JOIN dept_manager ON
dept_manager.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = dept_manager.dept_no;

--Query for department of each employee - employee number, last name, first name and department name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = dept_emp.dept_no;

