# Write your MySQL query statement below
SELECT a.project_id, ROUND((SUM(b.experience_years)/COUNT(b.name)),2) as average_years
FROM Project a
JOIN Employee b
ON a.employee_id = b.employee_id
GROUP BY a.project_id;