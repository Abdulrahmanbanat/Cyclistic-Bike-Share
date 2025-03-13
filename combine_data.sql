CREATE TABLE `captsone-project-453214.cyclistic_bike.combine` AS (

SELECT * 
FROM `captsone-project-453214.cyclistic_bike.202403-divvy-tripdata`
UNION ALL
SELECT * 
FROM `captsone-project-453214.cyclistic_bike.202404-divvy-tripdata`
UNION ALL
SELECT * 
FROM `captsone-project-453214.cyclistic_bike.202405-divvy-tripdata`
UNION ALL
SELECT * 
FROM `captsone-project-453214.cyclistic_bike.202406-divvy-tripdata`
UNION ALL
SELECT * 
FROM `captsone-project-453214.cyclistic_bike.202407-divvy-tripdata`
UNION ALL
SELECT * 
FROM `captsone-project-453214.cyclistic_bike.202408-divvy-tripdata`
UNION ALL
SELECT * 
FROM `captsone-project-453214.cyclistic_bike.202409-divvy-tripdata`
UNION ALL
SELECT * 
FROM `captsone-project-453214.cyclistic_bike.202410-divvy-tripdata`
UNION ALL
SELECT * 
FROM `captsone-project-453214.cyclistic_bike.202411-divvy-tripdata`
UNION ALL
SELECT * 
FROM `captsone-project-453214.cyclistic_bike.202412-divvy-tripdata`
UNION ALL
SELECT * 
FROM `captsone-project-453214.cyclistic_bike.202501-divvy-tripdata`
UNION ALL
SELECT * 
FROM `captsone-project-453214.cyclistic_bike.202502-divvy-tripdata`
)
