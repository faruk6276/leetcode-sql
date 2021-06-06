--My solution
SELECT name,balance FROM Users as u LEFT JOIN (select account,SUM(amount) as balance FROM Transactions GROUP BY account) as T on u.account=T.account where T.balance>10000

--another one

SELECT u.name,sum(amount) as balance FROM Users as u INNER JOIN Transactions as T on u.account=T.account GROUP BY u.name HAVING balance>10000
