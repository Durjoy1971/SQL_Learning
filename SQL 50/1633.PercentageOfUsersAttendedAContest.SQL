# Write your MySQL query statement below
SELECT contest_id, ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register AS R
GROUP BY R.contest_id
ORDER BY percentage DESC, contest_id ASC;