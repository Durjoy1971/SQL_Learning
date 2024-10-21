# Write your MySQL query statement below
SELECT P.product_id, IFNULL(ROUND(SUM(P.price * U.units)/SUM(U.units),2),0) AS average_price
FROM Prices P
LEFT JOIN UnitsSold U
ON P.product_id = U.product_id AND purchase_date BETWEEN start_date AND end_date
GROUP BY product_id;