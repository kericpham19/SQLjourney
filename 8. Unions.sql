-- Unions # allows you to combine rows 

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION ALL # "UNION ALL" allows duplicate from both tables. 
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;

SELECT first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM parks_and_recreation.employee_salary
;


SELECT first_name, last_name, 'Old Man' AS Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old Lady' AS Label
FROM parks_and_recreation.employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Highly Paid Emloyee' AS Label
FROM parks_and_recreation.employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name
;

# Note: UNION only work when there is the same amount of columns in each table. However, you can call distinct columns from each table with the same value like "first_name" and "last_name."





































