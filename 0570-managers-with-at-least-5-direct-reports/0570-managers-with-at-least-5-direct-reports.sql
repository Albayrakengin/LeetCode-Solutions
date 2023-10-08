# Write your MySQL query statement below
SELECT emp2.name
FROM Employee emp1
JOIN Employee emp2
ON emp1.managerId = emp2.id
GROUP BY emp1.managerId
HAVING COUNT(emp1.managerId) >= 5;
