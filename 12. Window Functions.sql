-- Windows Functions 

SELECT gender, AVG(salary) AS avg_salary
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender;


SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(partition by gender)
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER (partition by gender ORDER BY dem.employee_id) AS rolling_total
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id;


SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(partition by gender ORDER BY salary desc) AS row_num,
RANK() OVER(partition by gender ORDER BY salary desc) AS rank_num,
DENSE_RANK() OVER(partition by gender ORDER BY salary desc) AS dense_rank_num
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id;



SELECT dem.employee_id, dem.first_name, dem.last_name, gender, salary,
AVG(salary) OVER(partition by gender)
FROM parks_and_recreation.employee_demographics dem
JOIN parks_and_recreation.employee_salary sal
	ON dem.employee_id = sal.employee_id;




































































