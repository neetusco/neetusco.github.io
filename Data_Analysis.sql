## counting rides taken and average ride duration of member and casual users by day

SELECT
  member_casual,
  day,
  count(member_casual) AS Rides_Taken,
  time(CAST(AVG(strftime('%s', ride_duration) * 1000 + substr(ride_duration, -3)) / 1000 AS INTEGER), 'unixepoch') AS avg_ride_duration
FROM
  Bikeshare_data_2023
GROUP BY
  member_casual,
  day
Order By
  member_casual

## counting rides taken and average ride duration of member and casual users by Month

SELECT
  member_casual,
  Month,
  count(member_casual) AS Rides_Taken,
  time(CAST(AVG(strftime('%s', ride_duration) * 1000 + substr(ride_duration, -3)) / 1000 AS INTEGER), 'unixepoch') AS avg_ride_duration
FROM
  Bikeshare_data_2023
GROUP BY
  member_casual,
  Month
Order By
  member_casual

## counting rides taken and average ride duration of member and casual users by start time

SELECT
  member_casual,
  ride_start_time,
  count(member_casual) AS Rides_Taken
FROM
  Bikeshare_data_2023
GROUP BY
  member_casual,
  ride_start_time
Order By
  ride_start_time
  
  ## Counting ride types by member and Casual

SELECT
  member_casual,
  rideable_type,
  count(member_casual) AS Rides_Taken
FROM
  Bikeshare_data_2023
Group by
  member_casual,
  rideable_type
ORDER By
  member_casual