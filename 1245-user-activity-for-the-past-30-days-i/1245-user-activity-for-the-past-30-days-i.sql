# Write your MySQL query statement below
SELECT activity_date as day, COUNT(distinct user_id) as active_users
FROM Activity
GROUP BY activity_date
HAVING '2019-07-27' > activity_date and activity_date > '2019-06-27'
