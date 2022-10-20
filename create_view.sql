USE case1;
CREATE VIEW view_station AS
SELECT 
DISTINCT start_station_id as station_id,
start_station_name,
COUNT(start_station_id) as station_count
FROM case1.apr22
WHERE start_station_id != "" 
GROUP BY station_id
ORDER BY station_count DESC;

