-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
SELECT SUM(CITY.POPULATION) FROM CITY JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE WHERE CONTINENT = 'Asia'

-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
SELECT DISTINCT(CITY.NAME) FROM CITY JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE WHERE CONTINENT = 'Africa'

-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.Population)) FROM CITY JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE GROUP BY CONTINENT;

-- The Report
SELECT
CASE
    WHEN Grades.Grade < 8 THEN NULL
    ELSE Students.Name
END AS Student_Name,
Grades.Grade, Students.Marks
FROM Students
JOIN Grades
ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
ORDER BY Grades.Grade DESC, Student_Name, Students.Marks;