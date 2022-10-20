#Understanding the dataset
#Data columns available
SELECT *
FROM case1.apr22
LIMIT 5;

#Missing data in datetime
SELECT 
COUNT(ride_id)
FROM case1.apr22
WHERE started_at IS NULL
	AND ended_at IS NULL;

#Missing data in station ID
SELECT 
COUNT(ride_id)
FROM case1.apr22
WHERE start_station_id IS NULL or start_station_id = ""
	AND end_station_id IS NULL or end_station_id = "";

#75000 of 
SELECT 
COUNT(ride_id)
FROM case1.apr22;    
#371000 - 20%