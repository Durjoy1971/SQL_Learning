SELECT tweet_bucket, COUNT(*) AS user_num
FROM (   
    SELECT user_id, COUNT(*) AS tweet_bucket
    FROM tweets
    WHERE TO_CHAR(tweet_date, 'YYYY') = '2022'
    GROUP BY user_id
  ) AS Curated
GROUP BY tweet_bucket
;