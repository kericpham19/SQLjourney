-- Subqueries 

# Subquery, a query within a query.

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE employee_id IN 
					(SELECT employee_id
						FROM employee_salary		# This is a query within a query
                        WHERE dept_id = 1) 
;

SELECT first_name, salary, 
(SELECT AVG(salary)
FROM employee_salary)
FROM parks_and_recreation.employee_salary;


SELECT gender, AVG(age) AS avg_age, MAX(age) AS max_age, MIN(age) min_age, COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT AVG(salary)
FROM parks_and_recreation.employee_salary
;

SELECT * -- outer query
FROM parks_and_recreation.employee_salary
WHERE salary > (SELECT AVG(salary)
				FROM parks_and_recreation.employee_salary); -- subquery









