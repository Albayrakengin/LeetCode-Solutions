# Write your MySQL query statement below
SELECT *
FROM Cinema
HAVING id % 2 != 0 and description != 'boring'
ORDER BY rating DESC;