SELECT sell_date,count(DISTINCT product) as num_sold,GROUP_CONCAT(DISTINCT product) as products FROM Activities group by sell_date

--optimized

SELECT sell_date,
       COUNT(DISTINCT(product)) AS num_sold, 
       GROUP_CONCAT(DISTINCT product ORDER BY product ASC SEPARATOR ',') AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date ASC;