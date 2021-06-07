SELECT w.name as wearhouse_name,sum(w.units*p.Width*p.Length*p.Height) as volume FROM Warehouse as w JOIN Products as p on w.product_id=p.product_id group by w.name  
