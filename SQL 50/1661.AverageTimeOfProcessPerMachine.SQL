# Write your MySQL query statement below
SELECT ac1.machine_id, ROUND(AVG(ac2.timestamp - ac1.timestamp), 3) AS processing_time
FROM Activity ac1
JOIN ACtivity ac2
WHERE ac2.activity_type = 'end' AND
      ac1.activity_type = 'start' AND
      ac2.process_id = ac1.process_id AND
      ac2.machine_id = ac1.machine_id
GROUP BY ac1.machine_id;