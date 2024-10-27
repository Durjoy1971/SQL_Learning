# Write your MySQL query statement below
SELECT x, y, z, IF((x+y > z && x+z > y && y+z > x), "Yes", "No") AS triangle
FROM Triangle;