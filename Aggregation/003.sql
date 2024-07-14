-- Query a count of the number of cities in CITY having a Population larger than 100000.
SELECT COUNT(ID) FROM CITY WHERE POPULATION > 100000;

-- Query the total population of all cities in CITY where District is California.
SELECT SUM(POPULATION) FROM CITY WHERE DISTRICT = 'California';

-- Query the average population of all cities in CITY where District is California.
SELECT AVG(POPULATION) FROM CITY WHERE DISTRICT = 'California';

-- Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT FLOOR(AVG(POPULATION)) FROM CITY;

-- Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(POPULATION) FROM CITY WHERE COUNTRYCODE = 'JPN';

-- Query the difference between the maximum and minimum populations in CITY.
SELECT MAX(POPULATION)-MIN(POPULATION) FROM CITY;

-- Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's 0 key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.
-- Write a query calculating the amount of error (actual - miscalculated), and round it up to the next integer.
SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary,'0',''))) FROM EMPLOYEES;

-- Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345 . Truncate your answer to 4 decimal places.
SELECT ROUND(SUM(LAT_N),4) FROM STATION WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.
SELECT MAX(ROUND(LAT_N,4) ) FROM STATION WHERE LAT_N < 137.2345;

-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345 . Round your answer to 4 decimal places.
SELECT ROUND(LONG_W,4)  FROM STATION  WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);

-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780 . Round your answer to 4 decimal places.
SELECT MIN(ROUND(LAT_N,4) ) FROM STATION WHERE LAT_N > 38.7780;

-- Query the Western Longitude (LONG_W) where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780 . Round your answer to 4 decimal places.
SELECT ROUND(LONG_W,4) FROM STATION WHERE LAT_N > 38.7780 ORDER BY LAT_N ASC LIMIT 1;

-- Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.
SELECT ROUND((MAX(LAT_N)-MIN(LAT_N) + MAX(LONG_W)-MIN(LONG_W)),4) FROM STATION;

-- Query the Eucludien Distance between points P1 and P2 and round it to a scale of 4 decimal places.
SELECT ROUND(SQRT(POW(MAX(LAT_N)-MIN(LAT_N),2) + POW(MAX(LONG_W)-MIN(LONG_W),2)),4) FROM station;