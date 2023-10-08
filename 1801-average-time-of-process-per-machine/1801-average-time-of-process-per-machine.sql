# Write your MySQL query statement below
SELECT a1.machine_id, ROUND((sum(a2.timestamp) - sum(a1.timestamp)) / COUNT(a2.timestamp), 3) as processing_time
FROM Activity a1
JOIN Activity a2
ON a1.machine_id = a2.machine_id and a1.process_id = a2.process_id and a1.activity_type = 'start' and a2.activity_type = 'end'
GROUP BY machine_id;