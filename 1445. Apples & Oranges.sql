SELECT a.sale_date,a.sold_num-o.sold_num as diff FROM (SELECT sale_date,sold_num from Sales where fruit="apples" ) as a INNER JOIN (select sale_date,sold_num from Sales where fruit='oranges') as o on a.sale_date=o.sale_date

