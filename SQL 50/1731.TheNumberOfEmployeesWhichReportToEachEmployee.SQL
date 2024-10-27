# Write your MySQL query statement below
SELECT E1.reports_to AS employee_id,  E2.name, COUNT(*) AS reports_count, ROUND(AVG(E1.age)) AS  average_age
FROM Employees E1
LEFT JOIN Employees E2
ON E1.reports_to = E2.employee_id
GROUP BY E1.reports_to
HAVING E1.reports_to IS NOT NULL
ORDER BY employee_id;