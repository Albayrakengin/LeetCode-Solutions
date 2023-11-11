# Write your MySQL query statement below
SELECT k.reports_to as employee_id, p.name as name, COUNT(k.name) as reports_count, ROUND(AVG(k.age)) as average_age
FROM Employees k
LEFT JOIN Employees p
on k.reports_to = p.employee_id
GROUP BY k.reports_to
HAVING ISNULL(k.reports_to) = 0
ORDER BY employee_id