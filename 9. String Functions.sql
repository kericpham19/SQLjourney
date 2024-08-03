-- String Functions

SELECT length('skyfall');

SELECT first_name, length(first_name) # Length displays how many charcters are in the "first_name."
FROM parks_and_recreation.employee_demographics
ORDER BY 2; # Orders by shortest to longest 

SELECT last_name, length(last_name) last_name_length
FROM parks_and_recreation.employee_salary
ORDER BY 2
;

SELECT UPPER('sky');
SELECT LOWER('SKY'); # it is commanded to show in LOWER case even why it is spelled in Upper case in qoutation. 

SELECT first_name, UPPER(first_name) # UPPER displays the first name upper case
FROM parks_and_recreation.employee_demographics
;

SELECT last_name, LOWER(last_name)
FROM parks_and_recreation.employee_salary
;

-- Trim # Trim helps gets rid of the white spaces in the charts at the end. 

SELECT LTRIM('   sky   '); # Trim gets rid of the leading and trailing white spaces.
SELECT RTRIM('   sky   ');

--
SELECT first_name, 
LEFT(first_name, 4) AS Left_side, # this code ask how many charcter do we want from the "LEFT" hand side. Ex. "Leslie" --> "Lesl" 
RIGHT(first_name, 4) AS Right_side,
SUBSTRING(first_name,3,2) AS first_substring, # This code will start at a charcter (3 charcter) and will take the amount of charcters (2 charcter total) 
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM parks_and_recreation.employee_demographics;

-- Replace # will take a charcter and replace it with a different charcter of your choice 

SELECT first_name, REPLACE(first_name, 'a', 'z') # the "a" is lower case therfore it will only replace any letter "a" that is lowercase with letter "z"
FROM parks_and_recreation.employee_demographics;

-- Locate 

SELECT LOCATE('x', 'Alexander'); # Locates the "x" in "Alexander" which is located in 4 places in the charcter

SELECT LOCATE('e', 'Keric'); 

SELECT first_name, LOCATE('An', first_name)
FROM parks_and_recreation.employee_demographics;

-- Concatenation

SELECT first_name, last_name,
CONCAT(first_name,' ', last_name) AS full_name # this command will combine two cells by taking two columns and making one columns out of it. 
FROM parks_and_recreation.employee_demographics;






















