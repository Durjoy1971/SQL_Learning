# Write your MySQL query statement below
SELECT Sales.product_id, Sales.year AS first_year, Sales.quantity, Sales.price
FROM Sales
LEFT JOIN Product
ON Sales.product_id = Product.product_id
WHERE (Sales.product_id, year) IN (
    SELECT product_id, MIN(year) AS first_year
    FROM Sales
    GROUP BY product_id
)