-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
SELECT * FROM CITY WHERE POPULATION > 100000 AND CountryCode = "USA";

-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT CITY FROM STATION WHERE ID % 2 = 0;

-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.The STATION table is described.
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;

-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically. The STATION table is described. Note: You can write two separate queries to get the desired output. It need not be a single query.

SELECT CITY, CHAR_LENGTH(CITY) FROM STATION ORDER BY CHAR_LENGTH(CITY), CITY LIMIT 1;
SELECT CITY, CHAR_LENGTH(CITY) FROM STATION ORDER BY CHAR_LENGTH(CITY) DESC, CITY  LIMIT 1;

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT CITY FROM STATION WHERE CITY LIKE 'a%' or CITY LIKE 'e%' or CITY LIKE 'i%' or CITY LIKE 'o%' or CITY LIKE 'u%'

-- OR
SELECT CITY FROM STATION WHERE left (CITY,1) IN ('a','e','i','o','u');

-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION WHERE RIGHT(CITY,1) IN ('a','i','e','o','u');

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION WHERE left (CITY,1) IN ('a','e','i','o','u') AND RIGHT(CITY,1) IN ('a','i','e','o','u');

-- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION WHERE left (CITY,1) NOT IN ('a','e','i','o','u');

-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) FROM STATION WHERE left (CITY,1) NOT IN ('a','e','i','o','u') OR RIGHT(CITY,1) NOT IN ('a','i','e','o','u');

-- Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
SELECT Name FROM STUDENTS WHERE Marks > 75 ORDER BY RIGHT(Name,3),ID

-- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT name FROM Employee ORDER BY name;

-- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2K per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
SELECT name FROM Employee WHERE salary > 2000 AND months < 10 ORDER BY employee_id ASC

-- We define an employee's total earnings to be their monthly(salary * months) worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.
SELECT salary * months, COUNT(*) FROM Employee GROUP BY (salary * months) ORDER BY (salary * months) DESC LIMIT 1;

-- Query the following two values from the STATION table:
-- The sum of all values in LAT_N rounded to a scale of  decimal places.
-- The sum of all values in LONG_W rounded to a scale of  decimal places.
SELECT  ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)  FROM STATION;