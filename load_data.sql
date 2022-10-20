#I load the data into the table
USE case1;
LOAD DATA INFILE '202204-divvy-tripdata.csv'
INTO TABLE apr22
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
start_station_id,
end_station_name,
end_station_id,
@start_lat,
@start_lng,
@end_lat,
@end_lng,
member_casual)
SET
start_lat = NULLIF(@start_lat,''),
start_lng = NULLIF(@start_lng,''),
end_lat = NULLIF(@end_lat,''),
end_lng = NULLIF(@end_lng,'')
