-- Number of trips per rider type
SELECT 
  member_casual,
  COUNT(*) AS num_of_trips
FROM
  `captsone-project-453214.cyclistic_bike.combine`
GROUP BY
  member_casual
ORDER BY
  member_casual;

-- Number of trips per bike type per rider type
SELECT 
  member_casual, 
  rideable_type, 
  COUNT(*) AS num_of_trips
FROM 
  `captsone-project-453214.cyclistic_bike.combine`
GROUP BY 
  member_casual, rideable_type
ORDER BY 
  member_casual, num_of_trips;

-- Average ride length per rider type
SELECT 
  member_casual,
  FORMAT_TIMESTAMP('%T', TIMESTAMP_SECONDS(CAST(AVG(TIME_DIFF(ride_length, '00:00:00', SECOND)) AS INT64))) AS avg_ride_length
FROM
  `captsone-project-453214.cyclistic_bike.combine`
GROUP BY
  member_casual;

-- Average ride length per month per rider type
WITH combined AS (
  SELECT 
    *, 
    EXTRACT(MONTH FROM started_at) AS month
  FROM
    `captsone-project-453214.cyclistic_bike.combine`
)
SELECT 
  member_casual,
  month,
  FORMAT_TIMESTAMP('%T', TIMESTAMP_SECONDS(CAST(AVG(TIME_DIFF(ride_length, '00:00:00', SECOND)) AS INT64))) AS avg_ride_length
FROM combined
GROUP BY 
  member_casual, month
ORDER BY
  member_casual, month;

-- Average ride length per day per rider type
SELECT 
  member_casual,
  day_of_week,
  FORMAT_TIMESTAMP('%T', TIMESTAMP_SECONDS(CAST(AVG(TIME_DIFF(ride_length, '00:00:00', SECOND)) AS INT64))) AS avg_ride_length
FROM
  `captsone-project-453214.cyclistic_bike.combine`
GROUP BY 
  member_casual, day_of_week
ORDER BY
  member_casual, day_of_week;

-- Average ride length per hour per rider type
WITH combined AS (
  SELECT 
    *, 
    EXTRACT(HOUR FROM started_at) AS hour
  FROM
    `captsone-project-453214.cyclistic_bike.combine`
)
SELECT 
  member_casual,
  hour,
  FORMAT_TIMESTAMP('%T', TIMESTAMP_SECONDS(CAST(AVG(TIME_DIFF(ride_length, '00:00:00', SECOND)) AS INT64))) AS avg_ride_length
FROM combined
GROUP BY 
  member_casual, hour
ORDER BY
  member_casual, hour;

-- Number of trips per month per rider type
WITH combined AS (
  SELECT 
    *, 
    EXTRACT(MONTH FROM started_at) AS month
  FROM
    `captsone-project-453214.cyclistic_bike.combine`
)
SELECT
  member_casual,
  month,
  COUNT(*) AS num_of_trips
FROM  
  combined
GROUP BY
  member_casual, month
ORDER BY 
  member_casual, month;

-- Number of trips per day per rider type
SELECT
  member_casual,
  day_of_week,
  COUNT(*) AS num_of_trips
FROM  
  `captsone-project-453214.cyclistic_bike.combine`
GROUP BY
  member_casual, day_of_week
ORDER BY 
  member_casual, day_of_week;

-- Number of trips per hour per rider type
WITH combined AS (
  SELECT 
    *, 
    EXTRACT(HOUR FROM started_at) AS hour
  FROM
    `captsone-project-453214.cyclistic_bike.combine`
)
SELECT
  member_casual,
  hour,
  COUNT(*) AS num_of_trips
FROM  
  combined
GROUP BY
  member_casual, hour
ORDER BY 
  member_casual, hour;

-- Most popular start stations per rider type
SELECT
  member_casual,
  start_station_name,
  AVG(start_lat) AS start_lat,
  AVG(start_lng) AS start_lng,
  COUNT(*) AS num_of_trips
FROM
  `captsone-project-453214.cyclistic_bike.combine`
GROUP BY
  member_casual, start_station_name
ORDER BY 
  member_casual, num_of_trips DESC;

-- Most popular end stations per rider type
SELECT
  member_casual,
  end_station_name,
  AVG(end_lat) AS end_lat,
  AVG(end_lng) AS end_lng,
  COUNT(*) AS num_of_trips
FROM
  `captsone-project-453214.cyclistic_bike.combine`
GROUP BY
  member_casual, end_station_name
ORDER BY 
  member_casual, num_of_trips DESC;
