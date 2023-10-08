# Write your MySQL query statement below
SELECT emp2.id
FROM Weather emp1
JOIN Weather emp2
WHERE emp2.temperature > emp1.temperature and DATE_SUB(emp2.recordDate, INTERVAL 1 DAY) = emp1.recordDate;
