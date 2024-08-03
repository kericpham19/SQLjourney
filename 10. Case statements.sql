-- Case Statement 

SELECT first_name, last_name, age,
CASE 
	WHEN age <= 30 THEN 'Young' 
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age >= 50 THEN "Near Retirment" # In case statements you can add as many "When" statements
END AS Age_Bracket
FROM parks_and_recreation.employee_demographics
;

-- Practice 
# The Ponny council sent out a memo of their bonus and pay increase for end of year. We need to follow it and determine peoples end of year salary, or salary going into New Year. If they recieved a bonus, how much was it?
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus 

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS New_Salary,
CASE 
	WHEN dept_id = 6 THEN salary + (salary * 0.10)
END AS Bonus
FROM parks_and_recreation.employee_salary;


SELECT *
FROM parks_and_recreation.employee_salary;
SELECT *
FROM parks_departments



























