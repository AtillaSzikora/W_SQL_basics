USE hr_db;

# 1. Write a query to display the names (first_name, last_name) and salary for all employees
# whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.
SELECT first_name, last_name, salary, department_id FROM employees WHERE
(department_id = 30 OR department_id = 100) AND
(salary < 10000 OR salary > 15000);

# 2. Write a query to display the names (first_name, last_name) and hire date for all employees who were hired in 1987.
# Hint: Read more about YEAR()
SELECT first_name, last_name, hire_date FROM employees WHERE
YEAR(hire_date) = 1987;

# 3. Write a query to display the first_name of all employees who have both "b" and "c" in their first name.
SELECT first_name FROM employees WHERE
first_name LIKE '%b%' AND
first_name LIKE '%c%';

# 4. Write a query to display the last name, job, and salary for all employees
# whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000.
SELECT last_name, job_id, salary FROM employees WHERE
(job_id = 'IT_PROG' OR job_id = 'SH_CLERK') AND
(salary != 4500 AND salary != 10000 AND salary != 15000);

# 5. Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.
SELECT * FROM employees WHERE
last_name = 'BLAKE' OR
last_name = 'SCOTT' OR
last_name = 'KING' OR
last_name = 'FORD';