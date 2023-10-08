# Write your MySQL query statement below
SELECT a.product_id, ifnull(ROUND((SUM(units * price)/SUM(units)),2), 0 ) as average_price
FROM Prices a
LEFT JOIN UnitsSold b
ON a.product_id = b.product_id and a.end_date >= b.purchase_date and b.purchase_date >= a.start_date 
GROUP BY a.product_id;