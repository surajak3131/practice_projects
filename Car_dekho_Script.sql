create database car_dekho_details;
use car_dekho_details;

-- 1. Read cars details
select * from cars_summary;

-- 2. Total cars = get count of total records
select count(*) from cars_summary;

-- 3. The manager asked the employee, how many cars will be available in 2023?
select count(*) from cars_summary where year=2023;

-- 4. The manager asked the employee, how many cars is available in 2020,2021,2022
select year, count(*) from cars_summary where year in (2020,2021,2022) group by year;

-- 5. The client asked me to print total of all cars by year. "I don't see all the details"
select year, count(*) from cars_summary group by year; 

-- 6. Client asked the car dealer, How many Diesel cars is available in 2020
select count(*) from cars_summary where year=2020 and fuel='Diesel';

-- 7. Client asked the car dealer, How many Petrol cars is available in 2020
select count(*) from cars_summary where year=2020 and fuel='Petrol';

-- 8. The manager told the employee to give a print of all fuel cars(Petrol, Diesel, and CNG) come by all year.
select year,count(*) from cars_summary where fuel='Petrol' group by year ;
select year,count(*) from cars_summary where fuel='Diesel' group by year ;
select year,count(*) from cars_summary where fuel='CNG' group by year ;

-- 9. Manager said there were more than 100 cars  in a given year, which year has more than 100 cars
select year, count(*) from cars_summary group by year having count(*)>100; 

-- 10. The manager said to employee, all cars COUNT between 2015 and 2023.
select count(Name) from cars_summary where year between 2015 and 2023; 

-- 11. The manager said to employee, all cars DETAILS between 2015 and 2023. We need complete list  
select * from cars_summary where year between 2015 and 2023; 

-- The End--