# Write your MySQL query statement below
SELECT teacher_id , count(distinct subject_id) as cnt
FROM Teacher
GROUP BY teacher_id
ORDER BY teacher_id, subject_id;