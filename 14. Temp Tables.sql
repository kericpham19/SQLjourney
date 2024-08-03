-- Temportaty Table 

CREATE TEMPORARY TABLE temp_table # "CREATE TEMPORARY TABLE" code will creat a table that will not be stored in the schemas, meaning if you exit SQL and come back it will not be there where as 
(first_name varchar(50),								#"CREATE TABLE" code will create a table into the schemas and will be there unlil deleted. 
last_name varchar(100),
favortie_movie_or_tvshow varchar(100)
);

SELECT *
FROM temp_table
;

INSERT INTO temp_table
VALUES('Keric', 'Pham', 'Modern Family')
;

SELECT *
FROM temp_table
;

SELECT *
FROM parks_and_recreation.employee_salary
;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;



























































































