--Query Questions Beginner

--Q1. List all Car Manufacturers and their countries.
SELECT Manufacturer_Name, Country
FROM MANUFACTURERS;

--Q2. Show all manufacturers ordered by their founding year(older first).
SELECT Manufacturer_Name, YearFounded
FROM MANUFACTURERS
ORDER BY YearFounded ASC;

--Q3. Find all manufacturers whose revenue is greater than 100 billion USD.
SELECT Manufacturer_Name, Revenue_USD_Billion
FROM MANUFACTURERS
WHERE Revenue_USD_Billion > 100;

--Q4. List all car models whose tyoe is "SUV"
SELECT Model_Name, Car_Type
FROM CARS
WHERE car_type = 'SUV';

--Q5. Display each car model along with its manufacturers name and country.
SELECT MANUFACTURERS.Manufacturer_Name, CARS.Model_Name, MANUFACTURERS.Country
FROM MANUFACTURERS
INNER JOIN CARS ON CARS.Manufacturer_ID = MANUFACTURERS.Manufacturer_ID;

--Q6. Show all sales that happened in 'North America' listing the model and units sold.
SELECT CARS.Model_Name, SALES.Units_Sold
FROM SALES
INNER JOIN CARS ON CARS.Model_ID = SALES.Model_ID
INNER JOIN REGIONS ON REGIONS.Region_ID = SALES.Region_ID
WHERE REGIONS.Region_Name = 'North America';

--Q7. Find all models and units sold for the year 2023
SELECT Model_Name, Units_Sold
FROM SALES
INNER JOIN CARS ON CARS.Model_ID = SALES.Model_ID
WHERE SALES.Sales_Year = '2023';

--Q8. What is the totally number of units sold by region
SELECT REGIONS.Region_ID, SUM(SALES.Units_Sold)
FROM SALES
INNER JOIN REGIONS ON REGIONS.Region_ID = SALES.Region_ID
GROUP BY REGIONS.Region_ID;

--Q9. Which Manufacturer sold the most total units across all regions
SELECT MANUFACTURERS.Manufacturer_Name, SUM(SALES.Units_Sold) AS Total_Units_Sold
FROM SALES
JOIN CARS ON SALES.Model_ID = CARS.Model_ID
JOIN MANUFACTURERS ON CARS.Manufacturer_ID = MANUFACTURERS.Manufacturer_ID
GROUP BY MANUFACTURERS.Manufacturer_Name
ORDER BY Total_Units_Sold DESC
LIMIT 1;

--Q10. What is the average car price per manufacturer
SELECT MANUFACTURERS.Manufacturer_Name, FORMAT(AVG(CARS.Car_Price),2) AS Average_Car_Price
FROM CARS
JOIN MANUFACTURERS ON MANUFACTURERS.Manufacturer_ID = CARS.Manufacturer_ID
GROUP BY MANUFACTURERS.Manufacturer_Name
ORDER BY Average_Car_Price ASC;


--Query Questions Intermeditate