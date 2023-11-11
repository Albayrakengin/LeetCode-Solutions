# Write your MySQL query statement below
SELECT x, y, z, CASE
                  WHEN(ABS(x-y) < z and z < (x+y)) THEN 'Yes' ELSE 'No' END as triangle
FROM Triangle