# Write your MySQL query statement below
SELECT E.name, B.bonus
FROM Employee AS E
LEFT JOIN Bonus AS B
ON E.empID = B.empID
WHERE (B.bonus IS NULL OR B.bonus < 1000)