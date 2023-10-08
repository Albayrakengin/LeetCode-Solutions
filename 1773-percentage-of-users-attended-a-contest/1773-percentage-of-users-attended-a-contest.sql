# Write your MySQL query statement below
SELECT contest_id ,ROUND((COUNT(user_name)/(select COUNT(user_id) from Users)*100),2) as percentage
FROM Register a
JOIN Users b 
ON b.user_id = a.user_id
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;
