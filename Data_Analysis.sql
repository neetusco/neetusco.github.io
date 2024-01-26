## Calculating total number of rides, average of ride_length and maximum value of ride_length
SELECT
  count(Ride_id) as number_of_rides,
  time(CAST(AVG(strftime('%s', ride_length) * 1000 + substr(ride_length, -3)) / 1000 AS INTEGER), 'unixepoch') AS avg_ride_length, 
  max(ride_length) as max_ride_length
FROM
  new_combined_2023

## Calculating mode of the ride_day

select 
  ride_day,
  max(num_days) as max_frequency
from (
  select  
	ride_day,
	count(*) as num_days 
  from 
    new_combined_2023 
  group by 
	ride_day 
)
 ## Calculating total rides of member and Casual customer type by ride type

SELECT
  member_casual,
  rideable_type,
  count(member_casual) AS Rides_Taken
FROM
  new_combined_2023
Group by
  member_casual,
  rideable_type
ORDER By
  member_casual

## Calulating total number of rides, average of ride_length and maximum value of ride_length by customer type (member_casual)

SELECT
  member_casual,
  count(Ride_id) as number_of_rides,
  time(CAST(AVG(strftime('%s', ride_length) * 1000 + substr(ride_length, -3)) / 1000 AS INTEGER), 'unixepoch') AS avg_ride_length, 
  max(ride_length) as max_ride_length
FROM
  new_combined_2023
Group by 
  member_casual

## calculating total number of rides, average ride length of member and casual customer type by ride_day

SELECT
  member_casual,
  ride_day,
  count(member_casual) AS Rides_Taken,
  time(CAST(AVG(strftime('%s', ride_length) * 1000 + substr(ride_length, -3)) / 1000 AS INTEGER), 'unixepoch') AS avg_ride_duration
FROM
  new_combined_2023
GROUP BY
  member_casual,
  ride_day
Order By
  member_casual

## counting total number of rides, average ride length of member and casual customer type by Month

SELECT
  member_casual,
  Month,
  count(member_casual) AS Rides_Taken,
  time(CAST(AVG(strftime('%s', ride_length) * 1000 + substr(ride_length, -3)) / 1000 AS INTEGER), 'unixepoch') AS avg_ride_length
FROM
  new_combined_2023
GROUP BY
  member_casual,
  Month
Order By
  member_casual

## counting total number of rides, average of ride_length of member and casual customer type by start_time

SELECT
  member_casual,
  ride_start_time,
  count(member_casual) AS Rides_Taken
FROM
  new_combined_2023
GROUP BY
  member_casual,
  ride_start_time
Order By
  ride_start_time