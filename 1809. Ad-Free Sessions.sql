select session_id from Playback where session_id not in(SELECT distinct session_id FROM Playback as p INNER JOIN Ads as a ON p.customer_id=a.customer_id where a.timestamp between p.start_time and p.end_time)

-- Optimized given solution

SELECT p.session_id from Playback as p LEFT JOIN Ads as a ON p.customer_id=a.customer_id and a.timestamp BETWEEN p.start_time and p.end_time where a.customer_id is NULL