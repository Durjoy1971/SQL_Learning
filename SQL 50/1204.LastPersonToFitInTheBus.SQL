SELECT Q2.person_name
FROM Queue Q1
JOIN Queue Q2
ON Q1.turn <= Q2.turn
GROUP BY Q2.turn
HAVING SUM(Q1.weight) <= 1000
ORDER BY Q2.turn DESC
LIMIT 1
;