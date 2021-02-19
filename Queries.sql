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

--Query for first name, last name and sex for employees whose first name is Hercules and last names begin with B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND
	  last_name LIKE 'B%';


--Query for all employees in the sales department, with employee number, last name, first name, department name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales';

--Query for all employees in the sales and development departments with employee number, last name, first name, and department name
--As an extra, the ORDER BY sorts the list by department
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' OR
	  departments.dept_name = 'Development'
ORDER BY departments.dept_name;

--Query for the frequency count of employee last names in descending order
SELECT last_name, COUNT(last_name) AS "num_employees"
FROM employees
GROUP BY last_name
ORDER BY "num_employees" DESC;
	  

	  


