# Google Data Analytics Capstone Project: Cyclistic Bikeshare Case Study

## Introduction

The cyclistic bike-share analysis case study is a Capstone Project of the Google Data Analytics Certificate course. Six steps of data analysis have benn followed in this project: Ask, Prepare, Process, Analyze, Share, and Act to answer the business question of a hypothetical scenario. SQL is used to process and analyze the data and Tableau is used to visualize it.

## Scenario

Cyclistic is a bike-share company in Chicago. The company offers a fleet of 5,824 tracked bicycles and is locked into a network of 692 stations across Chicago. Cyclistic have divided its customers into two types: 

1.  Members, customers who purchase annual memberships
2.  Casuals, customers who purchase single-ride or full-day passes

The marketing director believes the company’s future success depends on maximizing the number of annual memberships. Therefore, our team wants to understand how casual riders and annual members use Cyclistic bikes differently. These insights will be used to design a new marketing strategy to convert casual riders into annual members. 

## Ask

### Business Task

Create a marketing strategy to convert casual riders to members.

### Analysis Questions

Three questions will guide the future marketing program:

1.	**How do annual members and casual riders use Cyclistic bikes differently?**
2.	Why would casual riders buy Cyclistic annual memberships?
3.	How can Cyclistic use digital media to influence casual riders to become members?
   
The below analysis is done to answer the first question: **How do annual members and casual riders use Cyclistic bikes differently?**

## Prepare

### Data Source

In this project, Cyclistic’s historical trip data is analyzed to identify trends from Jan 2023 to Dec 2023. The data can be downloaded from divvy_tripdata and has been made available by Motivate International Inc. under this license. The data is appropriate to explore how different customer types are using Cyclistic bikes. But note that data privacy issues prohibit using riders’ personally identifiable information, so connecting pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes is not possible.

### Data Organization 

12 CSV files for each month of the year 2023 are downloaded and saved in the folder named ‘divvy_tripdata’ in the local system. The names of the extracted files are changed from YYYYMM-divvy-tripdata to tripdata_MM_2023. Each file includes 13 columns as below:

1.	ride_id – Unique ride id
2.	rideable_type- Types of bikes
3.	started_at- start time
4.	ended_at- end time
5.	start_station_name- start station name
6.	start_station_id- start station id
7.	end_station_name- end station name
8.	end_station_id- end station id 
9.	start_lat- start station latitude
10.	start_lng- start station longitude
11.	end_lat- end station latitude
12.	end_lng – end station longitude
13.	member_casual- type of customer (member or casual)
    
## Process

SQL DB browser is used as an SQL tool for processing the data as it is not possible to handle large amounts of data in Microsoft Excel. 
The following steps are used in combining the 12 files into one table:

1.  Created a new database in the SQL DB browser
2.	Imported all 12 CSV files as tables in the SQL DB browser
3.	Used the SQL code to create a new table ‘combined_2023’ by combining all 12 tables. [SQL code for combining data](https://github.com/neetusco/neetusco.github.io/blob/main/table_union.sql)
4.	The new table includes 5,719,877 rows and 13 columns

The following steps are used in further exploring, cleaning, and manipulating the data. [SQL code for processing data](https://github.com/neetusco/neetusco.github.io/blob/main/Data_Processing.sql)

1.	Checked the column name and their data typede_id
2.	Column rideable_type has 3 unique values: classic, docked, and electric
3.	Column member_casual has 2 unique values: member and casual
4.	Few missing values found for station name columns however, ride_id, rideable_type, started_at, ended_at, and member_casual columns have no missing values so no rows deleted
5.	No duplicates found as all the ride_id values are unique
6.	Added 3 new columns - ride_length, ride_day, month and ride_start_time
7.	Created new table by deleted trips with ride_duration having 0 or negative values and only keeping the required columns
8.	Total 88,950 rows deleted
9.	Total rows or total trips- 5,630,927

## Analyze 

The following calculations are done as a part of the descriptive analysis and to compare how member riders and casual riders used Cyclistic bike-sharing rides differently in SQL. [SQL codes for analysing data](https://github.com/neetusco/neetusco.github.io/blob/main/Data_Analysis.sql). 

1.	Total number of rides, average of ride_length and maximum value of ride_length
2.	Mode of the ride_day
3.	Total rides of member and Casual customer type by ride type
4.	Total number of rides, average of ride_length and maximum value of ride_length by customer type (member_casual)
5. Total number of rides, average of ride_length of member and casual customer type by ride_day
6.	Total number of rides, average of ride_length of member and casual customer type by Month
7.	Total number of rides, average of ride_length of member and casual customer type by start_time

## Share

The data visualization is done in Tableau. [Click here](https://public.tableau.com/app/profile/neetika7566/viz/Book1_17048255362360/Dashboard4) to view the entire dashboard.

Some of the key findings are mentioned below with visuals to support them.

**1)	Number and rides and average of ride length by customer type**
   
The member took more rides constituting 64% of the total rides compared to the casual riders comprising only 36% of the total rides. However, the average duration of the rides was more for casual riders than for member riders.

         

![image](https://github.com/neetusco/neetusco.github.io/assets/157532904/945e9d27-792b-46c7-8be3-8e1bb8e5a569)





**2)	Number of rides by bike type**
   
Both types of customers prefer classic and electric bikes constituting 51% and 47% of the total bike rides compared to docked bikes which are tried by very few (~1%) casual riders only.


![image](https://github.com/neetusco/neetusco.github.io/assets/157532904/f97e75fb-4f5d-451c-a42d-d9a169fd22a1)




**3)	Number of rides taken by day of the weeks**
   
Members took maximum rides on Tuesday, Wednesday, and Thursday whereas casual riders used it mostly on weekends.
  


![image](https://github.com/neetusco/neetusco.github.io/assets/157532904/2930dbf4-0019-4988-959f-f26b32bc785b)













**4)	Number of rides taken by hour of the day**
   
Member riders used bikes at office peak hours (8 am & 5 pm) and casual riders usage increased during the daytime, peaking at 5 pm 

  ![image](https://github.com/neetusco/neetusco.github.io/assets/157532904/75fdf7ea-3981-46a8-b108-982f538a97db)


**5)	Number of rides taken by month**
    
Both types of riders typically use Cyclists bikes during the month of summer in June, July, and August
  
![image](https://github.com/neetusco/neetusco.github.io/assets/157532904/640c06e7-ff47-47e2-8643-48bcd9da87e8)


## Act

### Recommendations

1)	As casual customers are renting bikes for longer durations so, Cyclistic should consider offering some incentives for members who are using bikes for a longer time which can motivate casual customers to register as members.
2)	Cyclistic should consider offering monthly or seasonal membership as most of the casual riders are renting bikes during the summer months.
3)	Cyclistic should focus its marketing campaign on tourists as most of the casual riders rent bikes on weekends and also use them during the daytime which shows that they are not using bikes for office commute but for leisure. So, targeting tourists would be helpful and can encourage casual riders who are tourists to register for a monthly or seasonal membership.
