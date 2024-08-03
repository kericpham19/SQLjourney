SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name, last_name, birth_date, age
FROM parks_and_recreation.employee_demographics;

# another way to format the queary above

SELECT first_name, 
last_name, 
birth_date, 
age
FROM parks_and_recreation.employee_demographics;

# The queary below is to add ten (ten years) to the age catagory

SELECT first_name, 
last_name, 
birth_date, 
age,
age + 10 # this means add 10 to each age. 
FROM parks_and_recreation.employee_demographics;

SELECT first_name, 
last_name, 
birth_date,
age,
(age + 10) * 10 + 10
FROM parks_and_recreation.employee_demographics;
# PEMDAS, SQL follows the rules of PEMDAS just like the queary above

SELECT DISTINCT first_name, gender
FROM parks_and_recreation.employee_demographics;