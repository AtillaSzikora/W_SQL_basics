USE hr_db;

# 1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.
# Hint: Read more about NATURAL JOIN
SELECT location_id, street_address, city, state_province, country_name
FROM locations
NATURAL JOIN countries;

# 2. Write a query to find the names (first_name, last name), department ID and name of all the employees.
SELECT first_name, last_name, department_id, department_name
FROM employees
JOIN departments USING (department_id);

# 3. Find the names (first_name, last_name), job, department number, and department name of the employees who work in London.
SELECT e.first_name, e.last_name, e.job_id, e.department_id, d.department_name
FROM employees e
JOIN departments d
ON (e.department_id = d.department_id)
JOIN locations l ON
(d.location_id = l.location_id)
WHERE LOWER(l.city) = 'London';

# 4. Write a query to get the department name and number of employees in the department.
SELECT department_name AS 'Department',
COUNT(*) AS 'Employees'
FROM departments INNER JOIN employees
ON employees.department_id = departments.department_id
GROUP BY departments.department_id, department_name
ORDER BY department_name;

# 5. Find the names (first_name, last_name) and hire date of the employees who were hired after 'Jones'.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
JOIN employees davies
ON (davies.last_name = 'Jones')
WHERE davies.hire_date < e.hire_date;