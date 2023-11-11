# Write your MySQL query statement below
SELECT distinct a.num as ConsecutiveNums
FROM Logs a
JOIN logs b
ON a.id = (b.id - 1)
JOIN logs c
ON a.id = (c.id - 2)
WHERE a.num = b.num and b.num = c.num