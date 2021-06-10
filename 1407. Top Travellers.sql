SELECT u.name,coalesce(sum(r.distance),0) as travelled_distance FROM Users as u LEFT JOIN Rides as r on u.id=r.user_id group by u.name order by travelled_distance desc

--other solution
SELECT name, 
       Ifnull(Sum(distance), 0) AS travelled_distance 
FROM   users 
       LEFT JOIN rides 
              ON users.id = rides.user_id 
GROUP  BY name 
ORDER  BY travelled_distance DESC, 
          name