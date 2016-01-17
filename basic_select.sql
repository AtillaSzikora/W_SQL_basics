use hr_db;

# 1. Write a query to get unique department ID from employee table.
# Hint: Read more about DISTINCT
SELECT DISTINCT department_id FROM employees;

# 2. Write a query to get all employee details from the employee table order by first name, descending.
# Hint: Read more about ORDER BY
SELECT * FROM employees ORDER BY first_name DESC;

# 3. Write a query to get the total salaries payable to employees.
# Hint: Read more about SUM()
SELECT SUM(salary) FROM employees;

# 4. Write a query to get the maximum and minimum salary from employees table.
# Hint: Read more about MIN() and MAX()
SELECT MIN(salary) FROM employees;
SELECT MAX(salary) FROM employees;

# 5. Write a query to get the average salary and number of employees in the employees table.
# Hint: Read more about AVG()
SELECT AVG(salary) FROM employees;

# 6. Write a query to get the number of employees working with the company.
# Hint: Read more about COUNT()
SELECT COUNT(employee_id) FROM employees;

# 7. Write a query to get the number of jobs available in the employees table.
SELECT COUNT(DISTINCT(job_id)) FROM employees;

# 8. Write a query get all first name from employees table in upper case.
# Hint: Read more about UPPER()
SELECT UPPER(first_name) FROM employees;

# 9. Write a query to get the first 3 characters of first name from employees table.
# Hint: Read more about SUBSTRING()
SELECT SUBSTRING(first_name, 1, 3) FROM employees;

# 10. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.
# Hint: Read more about CONCAT()
SELECT CONCAT(first_name, ' ', last_name) FROM employees;

# 11. Write a query to get first name from employees table after removing white spaces from both side.
# Hint: Read more about TRIM()
SELECT TRIM(first_name) FROM employees;

# 12. Write a query to get the length of the employee names (first_name, last_name) from employees table.
# Hint: Read more about LENGTH()
SELECT CONCAT(LENGTH(first_name), ', ', LENGTH(last_name)) FROM employees;

# 13. Write a query to select first 10 records from a table.
# Hint: Read more about LIMIT
SELECT * FROM employees LIMIT 10;