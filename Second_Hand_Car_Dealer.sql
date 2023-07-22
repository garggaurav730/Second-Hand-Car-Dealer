CREATE DATABASE Second_Hand_Car_Dealer;
USE Second_Hand_Car_Dealer;
SELECT database();
SHOW TABLES;

-- QUESTION 1
-- Read cars data
SELECT * FROM car_dekho;

-- QUESTION 2
-- Total cars: Tp get a count of total records
SELECT COUNT(*) AS total_records FROM car_dekho;

-- QUESTION 3
-- The manager asked the employee how many cars will be available in 2023
SELECT COUNT(*) AS cars_in_2023 FROM car_dekho
WHERE year=2023;

-- QUESTION 4
-- The manager ask the employee how many cars is available in 2020,2021,2022
SELECT COUNT(*) AS cars_available FROM car_dekho
WHERE year IN (2020,2021,2022)
GROUP BY year;

-- QUESTION 5
-- Client asked me to print the total of all cars by air I don't see all the details
SELECT year,COUNT(*) AS cars_by_year FROM car_dekho
GROUP BY year;

-- QUESTION 6
-- Client us to car dealer agent how many diesel cars will be there in 2020
SELECT COUNT(*) AS 'Diesel_cars_2020' FROM car_dekho
WHERE year=2020 AND fuel='Diesel';

-- QUESTION 7
-- Client requested a car dealer agent how many petrol cars will be there in 2020
SELECT COUNT(*) AS 'Petrol_cars_2020' FROM car_dekho
WHERE year=2020 AND fuel='Petrol';

-- QUESTION 8
-- The manager told the employee to give a print all the fuel cars (Petrol,diesel and CNG) come by all year
SELECT fuel,year,COUNT(*) AS 'No._of_cars' FROM car_dekho
WHERE fuel IN ('Petrol','Diesel','CNG')
GROUP BY fuel,year;

-- QUESTION 9
-- Manager said there were more than 100 cars in a given year which year had more than 100 cars
SELECT year,COUNT(*) AS 'More_than_100_cars' FROM car_dekho
GROUP BY year
HAVING More_than_100_cars>100;

-- QUESTION 10
-- Manager said to the employee all cars count details between 2015 and 2023 we need a complete list
SELECT COUNT(*) AS No_of_Cars FROM car_dekho
WHERE year BETWEEN 2015 AND 2023;

-- QUESTION 11
-- Manager said to the employee all cars details between 2015 to 2023 we need complete
SELECT * FROM car_dekho
WHERE year BETWEEN 2015 AND 2023;