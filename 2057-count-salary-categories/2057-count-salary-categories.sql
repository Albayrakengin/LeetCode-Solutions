# Write your MySQL query statement below
SELECT category, COUNT(account_id) as accounts_count
FROM (
    SELECT 'Low Salary' AS category
    UNION
    SELECT 'Average Salary' AS category
    UNION
    SELECT 'High Salary' AS category
) AS categories
LEFT JOIN Accounts ON 
    (CASE
        WHEN income < 20000 THEN 'Low Salary'
        WHEN income >= 20000 AND income <= 50000 THEN 'Average Salary'
        WHEN income > 50000 THEN 'High Salary'
    END) = categories.category
GROUP BY category