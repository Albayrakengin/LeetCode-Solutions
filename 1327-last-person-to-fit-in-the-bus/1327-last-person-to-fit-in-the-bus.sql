# Write your MySQL query statement below

SELECT person_name
FROM (SELECT turn, person_name,   @running_sum := @running_sum + weight AS running_sum
FROM Queue
CROSS JOIN (SELECT @running_sum := 0) AS vars
ORDER BY turn
) as subquery
WHERE running_sum <= 1000
ORDER BY running_sum DESC
LIMIT 1