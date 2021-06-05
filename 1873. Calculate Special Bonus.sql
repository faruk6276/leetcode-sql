SELECT employee_id,IF(employee_id % 2 <>0 and substring(name,1,1)<>'M',salary,0) as bonus FROM Employees

-- i can use like in the position of substring

SELECT employee_id,IF(employee_id % 2 <>0 and name not LIKE('m%'),salary,0) as bonus FROM Employees