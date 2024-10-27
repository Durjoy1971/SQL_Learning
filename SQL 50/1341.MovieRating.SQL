# Write your MySQL query statement below
(SELECT name AS results
FROM MovieRating AS MR
JOIN Users AS U ON MR.user_id = U.user_id
GROUP BY MR.user_id
ORDER BY COUNT(movie_id) DESC, name ASC
LIMIT 1
)
UNION ALL
(SELECT title AS results
FROM MovieRating AS MR
JOIN Movies AS M ON MR.movie_id = M.movie_id
WHERE created_at BETWEEN '2020-02-01' AND '2020-02-28'
GROUP BY MR.movie_id
ORDER BY AVG(rating) DESC, title
LIMIT 1);