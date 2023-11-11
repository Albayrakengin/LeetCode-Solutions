SELECT DISTINCT product_id, 10 as price 
  FROM Products
    WHERE product_id not in(SELECT DISTINCT product_id
                              FROM Products 
                                WHERE change_date <='2019-08-16' )
UNION 
select product_id, new_price as price
from Products
where (product_id,change_date) in (select
                                    product_id , max(change_date) as date
                                      from Products
                                        where change_date <='2019-08-16'
                                          group by product_id)