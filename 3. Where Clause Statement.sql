-- WHERE Clause # WHERE clauses return rows whereas SELECT statements return colums 

SELECT * 
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie'
; # This queary will return an etire row about "Leslie"

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000 # This queary will return employees salary that is greater than or equal to 50000
;


SELECT * 
FROM parks_and_recreation.employee_salary
WHERE salary <= 50000  # SAme as the queary before this queary runs employees salary that equals or less than 50000
;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary = 50000
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Female' # The "!" means "not equal" meaning 
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01' # This queary shows the birthday greater than 1985
;

-- AND OR NOT -- Logical Operators #Logical Operators allow us to have different logic 
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'male' # This queary only returns "male" demographics who was born greater than "1985"
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'female' 
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'male' # The "OR" statement specify that one or the other should be true. Either "birth_date" or "gender." 
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'male' # The "OR NOT" statement specify this "or not equal to" that returns.  
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
; # This queary returns rows about "Leslie" and anyone with the age of "44" "OR" greater than the age of 55

-- LIKE Statement
-- % and _ # "%" means anything, _ means "specific value" 

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'Jer%' # This first name is like starting with "Jer and has anything after it" 
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE '%er%' # This queary will return anyone with "er" in their name.  
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a__' # This queary  will return only anyone with the name staring with "A" and two charcters after (there are two underscores) 
;

SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '1989%'
;

