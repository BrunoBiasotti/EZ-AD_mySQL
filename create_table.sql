#First I create the table for the dataset
USE case1;
CREATE TABLE apr22 (
ride_id VARCHAR(50) PRIMARY KEY NOT NULL,
rideable_type VARCHAR(50),
started_at DATETIME,
ended_at DATETIME,
start_station_name VARCHAR(200),
start_station_id VARCHAR(50),
end_station_name VARCHAR(200),
end_station_id VARCHAR(50),
start_lat FLOAT,
start_lng FLOAT,
end_lat FLOAT,
end_lng FLOAT,
member_casual VARCHAR(10)
);