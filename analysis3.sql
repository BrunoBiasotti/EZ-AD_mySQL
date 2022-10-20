#Station count
SELECT 
DISTINCT start_station_id as station_id,
start_station_name,
COUNT(start_station_id) as station_count
FROM case1.apr22
WHERE start_station_id != "" 
GROUP BY station_id
ORDER BY station_count DESC;

#Tableau public
/*
INTO OUTFILE 'sql_case1_station.csv'
FIELDS ENCLOSED BY '"'
TERMINATED BY ';'
ESCAPED BY '"'
LINES TERMINATED BY '\r\n';
*/