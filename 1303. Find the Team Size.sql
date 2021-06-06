select e.employee_id,e1.team_size from Employee as e JOIN (select team_id,count(team_id) as team_size from Employee GROUP BY team_id) as e1 on e.team_id=e1.team_id

--optimized solution 

SELECT employee_id, 
       team_size 
FROM   employee AS e 
       LEFT JOIN (SELECT team_id, 
                         Count(1) AS team_size 
                  FROM   employee 
                  GROUP  BY team_id) AS teams 
              ON e.team_id = teams.team_id 