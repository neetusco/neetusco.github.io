## Checking column name and their data type

PRAGMA table_info(Combined_2023);

## Exploring column rideable_type

Select 
  DISTINCT rideable_type
FROM
  Combined_2023

## Exploring column member_casual

Select 
  DISTINCT member_casual
FROM
  Combined_2023
  
##Finding missing values

SELECT 
  COUNT(*) - COUNT(ride_id) ride_id,
  COUNT(*) - COUNT(rideable_type) rideable_type,
  COUNT(*) - COUNT(started_at) started_at,
  COUNT(*) - COUNT(ended_at) ended_at,
  COUNT(*) - COUNT(start_station_name) start_station_name,
  COUNT(*) - COUNT(start_station_id) start_station_id,
  COUNT(*) - COUNT(end_station_name) end_station_name,
  COUNT(*) - COUNT(end_station_id) end_station_id,
  COUNT(*) - COUNT(start_lat) start_lat,
  COUNT(*) - COUNT(start_lng) start_lng,
  COUNT(*) - COUNT(end_lat) end_lat,
  COUNT(*) - COUNT(end_lng) end_lng,
  COUNT(*) - COUNT(member_casual) member_casual
FROM 
  Combined_2023
  
## Checking for duplicate rows

SELECT 
  COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM 
  Combined_2023

## Adding month Column

ALTER TABLE Combined_2023
ADD COLUMN Month
GENERATED ALWAYS AS(case strftime('%m', date(started_at)) when '01' then 'January' when '02' then 'Febuary' when '03' then 'March' when '04' then 'April' when '05' then 'May' when '06' then 'June' when '07' then 'July' when '08' then 'August' when '09' then 'September' when '10' then 'October' when '11' then 'November' when '12' then 'December' else '' end)

## Adding column ride_length
SELECT 
  ride_id,
  ROUND((JULIANDAY(ended_at) - JULIANDAY(started_at))*3600) AS ride_length
FROM 
  Combined_2023
  
## Adding column ride_day

ALTER TABLE Combined_2023
ADD COLUMN ride_day
GENERATED ALWAYS AS(case strftime('%w', date(started_at)) when '0' then 'Sunday' when '1' then 'Monday' when '2' then 'Tuesday' when '3' then 'Wednesday' when '4' then 'Thursday' when '5' then 'Friday' when '6' then 'Saturday' else '' end)

## Creating new table with added column and deleting rows not required