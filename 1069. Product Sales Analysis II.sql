SELECT s.product_id,sum(s.quantity) as total_quantity FROM Sales as s INNER JOIN Product as p on s.product_id=p.product_id GROUP BY s.product_id order by total_quantity
