# Write your MySQL query statement below
SELECT customer_id 
FROM Customer
GROUP BY customer_id
HAVING COUNT(distinct product_key) = (SELECT count(distinct product_key) FROM Product)

