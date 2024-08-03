-- Joins # Joins allow you to join 2 or more common column

SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT dem.employee_id, dem.first_name, dem.last_name, dem.gender, sal.occupation, sal.salary
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON parks_and_recreation.dem.employee_id = parks_and_recreation.sal.employee_id
;

SELECT dem.employee_id, age, occupation
FROM parks_and_recreation.employee_demographics AS dem				 # "AS dem" is short name for the code also known as an aliasis
INNER JOIN parks_and_recreation.employee_salary AS sal				 # "AS sal" is short name for this code also known as an aliasis
	ON parks_and_recreation.dem.employee_id = parks_and_recreation.sal.employee_id
;


-- Outer Join

-- Left Join vs. Right Join. Left takes everything from the left table and return only matches from the right table


SELECT *
FROM parks_and_recreation.employee_demographics AS dem 
LEFT OUTER JOIN parks_and_recreation.employee_salary AS sal
	ON parks_and_recreation.dem.employee_id = parks_and_recreation.sal.employee_id
;

SELECT *
FROM parks_and_recreation.employee_demographics AS dem 
RIGHT OUTER JOIN employee_salary AS sal 
	ON dem.employee_id = sal.employee_id
;

-- Self Join

SELECT *
FROM parks_and_recreation.employee_salary AS emp1
JOIN parks_and_recreation.employee_salary AS emp2
	ON emp1.employee_id = emp2.employee_id
;



SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM parks_and_recreation.employee_salary emp1
JOIN parks_and_recreation.employee_salary emp2
	ON emp1.employee_id +1 = emp2.employee_id
;

-- Joining multiple tables together 

SELECT *
FROM parks_and_recreation.employee_demographics AS dem 
INNER JOIN employee_salary AS sal 
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id
;














