USE hr_db;

# 1. Write a query to get the number of employees with the same job.
# Hint: Read more about GROUP BY
SELECT job_id, COUNT(*)
FROM employees
GROUP BY job_id;

# 2. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
SELECT manager_id, MIN(salary)
FROM employees
GROUP BY manager_id;

# 3. Write a query to get the department ID and the total salary payable in each department.
SELECT department_id, SUM(salary)
FROM employees
GROUP BY department_id;

# 4. Write a query to get the average salary for each job ID excluding programmer.
SELECT job_id, AVG(salary)
FROM employees
WHERE job_id != 'IT_PROG'
GROUP BY job_id;

# 5. Write a query to get the job ID and maximum salary of the employees
# where maximum salary is greater than or equal to $4000.
# Hint: Read more about HAVING
SELECT job_id, MAX(salary)
FROM employees
GROUP BY job_id
HAVING MAX(salary) >= 4000;

# 6. Write a query to get the average salary for all departments employing more than 10 employees.
SELECT department_id, AVG(salary)
FROM employees
GROUP BY DEPARTMENT_ID
HAVING COUNT(department_id) > 10;