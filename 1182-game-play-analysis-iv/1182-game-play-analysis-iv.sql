# Write your MySQL query statement below
SELECT ROUND(AVG(IFNULL((a.event_date = DATE_SUB(b.event_date, INTERVAL 1 DAY)),0)),2) as fraction
FROM Activity a 
LEFT JOIN Activity b
ON a.player_id = b.player_id and a.event_date = DATE_SUB(b.event_date, INTERVAL 1 DAY)
WHERE (a.player_id, a.event_date) in (
  SELECT player_id, MIN(event_date)
  FROM Activity
  GROUP BY player_id
);