USE hr_db;

# 1. Write a query to find the names (first_name, last_name) and salaries of the employees
# who have higher salary than the employee whose last_name='Bull'
SELECT first_name, last_name, salary
FROM employees WHERE salary >
(SELECT salary FROM employees
 WHERE last_name = 'Bull');

# 2. Find the names (first_name, last_name) of all employees who works in the IT department.
SELECT first_name, last_name FROM employees
WHERE department_id =
(SELECT department_id FROM departments
 WHERE department_name = 'IT');

# 3. Find the names (first_name, last_name) of the employees who are managers
SELECT first_name, last_name FROM employees
WHERE (employee_id IN (SELECT manager_id FROM employees));

# 4. Find the names (first_name, last_name), salary of the employees whose salary is greater than the average salary
SELECT first_name, last_name, salary FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

# 5. Find the names (first_name, last_name), salary of the employees
# whose salary is equal to the minimum salary for their job grade
SELECT first_name, last_name, salary FROM employees
WHERE salary =
(SELECT min_salary FROM jobs
 WHERE employees.job_id = jobs.job_id);

# 6. Find the names (first_name, last_name), salary of the employees
# who earn the same salary as the minimum salary for all departments.
SELECT first_name, last_name, salary FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);

# 7. Write a query to display the employee ID, first name, last names,
# and department names of all employees.
# Hint: Result of a SELECT can be a selected field
SELECT employee_id, first_name, last_name,
(SELECT department_name FROM departments
WHERE employees.department_id = departments.department_id)
department FROM employees ORDER BY department;

# 8. Write a query to select last 10 records from a table.
# Hint: Result of a SELECT can be a set where you can select
(SELECT * FROM departments
 ORDER BY department_id DESC LIMIT 10)
 ORDER BY department_id ASC;