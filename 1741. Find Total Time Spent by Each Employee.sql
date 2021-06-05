SELECT emp_id,event_day,SUM(out_time-in_time) as total_time FROM Employees GROUP BY event_day,emp_id order by event_day

-- another soultion 
SELECT event_day as day,emp_id,SUM(out_time-in_time) as total_time FROM Employees GROUP BY 1,2 order by 1,2