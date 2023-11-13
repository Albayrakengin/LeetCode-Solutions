# Write your MySQL query statement below
SELECT *
FROM(
  SELECT a.name as results 
  FROM users a
  JOIN(
    SELECT user_id, count(user_id) as count from movierating
    GROUP BY user_id
  ) as bb
  ON a.user_id = bb.user_id
  ORDER BY bb.count DESC, a.name limit 1
) as bc
UNION ALL
SELECT *
FROM (
  SELECT a.title as results
  FROM Movies a
  JOIN (SELECT movie_id, AVG(rating) as average_rating
        FROM MovieRating
        WHERE created_at >= '2020-02-01' and created_at <= '2020-02-28' 
        GROUP BY movie_id) as ad
  ON a.movie_id = ad.movie_id
  ORDER BY ad.average_rating desc, a.title limit 1 
) as ab
