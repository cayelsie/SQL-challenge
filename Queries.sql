--Query for employee number, last name, first name, sex and salary - join employees and salaries tables
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no = employees.emp_no;

--Query for first name, last name and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE right (hire_date,4) = '1986';