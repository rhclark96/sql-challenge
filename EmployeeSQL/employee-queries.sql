SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;

SELECT first_name, last_name, hire_date
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN departments ON departments.dept_no = dept_manager.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no;

SELECT dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no;

SELECT first_name, last_name, sex 
FROM employees 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM dept_emp
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON employees.emp_no= dept_emp.emp_no
WHERE departments.dept_name = 'Sales'; 

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON employees.emp_no= dept_emp.emp_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development'; 

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name;