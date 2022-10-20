#Analyzing both groups
SELECT 
apr22.member_casual,
COUNT(apr22.member_casual) AS apr22_travels_registered,
AVG(TIMESTAMPDIFF(SECOND, apr22.started_at, apr22.ended_at)) AS apr22_ride_length,
WEEKDAY(apr22.started_at) AS apr22_week_day
FROM case1.apr22
WHERE TRIM(apr22.member_casual) = 'member' 
GROUP BY apr22_week_day
ORDER BY apr22_week_day;
