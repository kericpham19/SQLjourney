-- Limit & Aliasing

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age DESC
LIMIT 2, 1  #LIMIT will show the amount of rows. 
;


-- Aliasing 

SELECT gender, AVG(age) AS avg_age # This command changes "AVG(age)" to "avg_age"
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING avg_age > 40
;