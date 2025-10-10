DROP DATABASE IF EXISTS Car_Manufacturers
CREATE DATABASE Car_Manufacturers;
USE Car Manufactureres;


CREATE TABLE MANUFACTURERS (
    Manufacturer_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Manufacturer_Name VARCHAR(35) NOT NULL,
    Country VARCHAR(35) NOT NULL,
    Founded_Year INT NOT NULL,
    Revenue_USD_Billion INTEGER NOT NULL
);


CREATE TABLE CARS (
    Model_ID INT NOT NULL,
    Model_Name VARCHAR(35) NOT NULL,
    Car_Type VARCHAR(12),
    Launch_Year INT NOT NULL,
    Car_Price INT,
    Manufacturer_ID INT NOT NULL,
    PRIMARY KEY(Model_ID)
    FOREIGN KEY (Manufacturer_ID) REFERENCES MANUFACTURERS (Manufacturer_ID)
);


CREATE TABLE SALES (
    Sales_ID INT NOT NULL,
    Model_ID INT NOT NULL,
    Region VARCHAR(35) NOT NULL,
    Year INT NOT NULL,
    Units_Sold INT NOT NULL,
    PRIMARY kEY(Sales_ID),
    FOREIGN KEY (Model_ID) REFERENCES CARS (Model_ID)
);

CREATE TABLE REGIONS (
    Region_ID INT NOT NULL PRIMARY KEY,
    Region_Name VARCHAR(35),
);



INSERT INTO MANUFACTURERS (Manufactorer_ID, Manufacturer_Name, Country, Founded_Year, Revenue_USD_Billion)
VALUES
(1, 'Toyota', 'Japan', '1937', 275),
(2, 'Ford', 'USA', '1903', 160),
(3, 'Volkswagen', 'Germany', '1937', 300),
(4, 'Hyundai', 'South Korea', '1967', 300),
(5, 'BMW', 'Germany', '1916', 150),
(6, 'Merceded-Benz', 'Germany', '1926', 155),
(7, 'Honda', 'Japan', '1948', 140),
(8, 'Tesla', 'USA', '2003', 95),
(9, 'Nissan', 'Japan', '1933', 90),
(10, 'Kia', 'South Korea', '1944', 80),
(11, 'Chevrolet', 'USA', '1911', 130),
(12, 'Peugeot', 'France', '1810', 70),
(13, 'Dodge', 'USA', '1900', 75),
(14, 'McLaren', 'United Kingdom', '1963', 25),
(15, 'Bugatti', 'France', '1909', 20);

INSERT INTO CARS (Model_ID, Manufacturer_ID, Model_Name, Car_Type, Launch_Year, Car_Price)
VALUES
(1, 1, 'Corolla', 'Sedan', '1968', 22000),
(2, 1, 'RAV4', 'SUV', '1995', 290000),
(3, 2, 'F-150','Truck', '1975', 41000),
(4, 2, 'Mustang', 'Coupe', '1964', 37000),
(5, 3, 'Golf', 'Hatchback', '1975', 250000),
(6, 3, 'Tiguan', 'SUV', '2008', 32000),
(7, 4, 'Sonata', 'Sedan', '1988', 24000),
(8, 4, 'Tucson', 'SUV', '2005', 28000),
(9, 5, '3 Series', 'Sedan', '1976', 42000),
(10, 5, 'X5', 'SUV', '2000', 42000),
(11, 6, 'C-Class', 'Sedan', '1994', 43000),
(12, 6, 'GLE', 'SUV', '2016', 65000),
(13, 7, 'Civic', 'Sedan', '1973', 23000),
(14, 7, 'CR-V', 'SUV', '1997', 29000),
(15, 8, 'Model 3', 'Sedan', '2017', 40000),
(16, 8, 'Model Y', "SUV", '2020', 48000),
(17, 9, 'Altima', 'Sedan', '1993', 28000),
(18, 9, "Rogue", 'SUV', '2008', 28000),
(19, 10, 'Sportage', 'SUV', '1995', 27000),
(20, 10, 'K5', 'Sedan', '2021', 25000),
(21, 11, 'Silverado', 'Truck', '1999', 43000),
(22, 11, 'Malibu', 'Sedan', '1964', 23000),
(23, 12, '208', 'Hatchback', '2019', 21000),
(24, 12, '3008', 'SUV', '2016', 31000),
(25, 13, 'Challenger', 'Coupe', '1970', 35000),
(26, 13, 'Charger', 'Sedan', '1966', 37000),
(27, 13, 'Durango', 'SUV', '1998', 42000),
(28, 14, '720S', 'Supercar', '2017', 300000),
(29, 14, 'Artura', 'Hybrid Supercar', '2023', 250000),
(30, 14, 'GT', 'Grand Tourer', '2020', 210000),
(31, 15, 'Chiron', 'Hypercar', '2017', 300000),
(32, 15, 'Divo', 'Hypercar', '2019', 5800000);


INSERT INTO REGIONS (Region_ID, Region_Name, Continent)
VALUES
(1,'North America'),
(2, 'Europe'),
(3, 'Asia'),
(4, 'South America'),
(5, 'Africa'),
(6, 'Oceania'),
(7, 'Middle East');


INSERT INTO SALES (Sales_ID, Model_ID, Region, Year, Units_Sold)
VALUES
(1, 1, 'Asia', '2023', 310000),
(2, 2, 'North America', '2023', 290000),
(3, 3, 'Noth America', '2023', 410000),
(4, 4, 'Europe', '2023', 220000),
(5, 5, 'Europe', '2023', 260000),
(6, 6, 'Asia', '2023', 200000),
(7, 7, 'Asia', '2023', 200000),
(8, 8, 'Europe', '2023', 230000),
(9, 9, 'Europe', '2023', 230000),
(10, 10, 'North America', '2023', 180000),
(11, 11, 'Asia', '2023', 210000),
(12, 12, 'Europe', '2023', 160000),
(13, 13, 'Asia', '2023', 290000),
(14, 14, 'North America', '2023', 240000),
(15, 15, 'North America', '2023', 350000),
(16, 16, 'Europe', '2023', 320000),
(17, 17, 'Asia', '2023', 200000),
(18, 18, 'North America', '2023', 220000),
(19, 19, 'Europe', '2023', 190000),
(20, 20, 'Asia', '2023', 170000),
(21, 21, 'North America', '2023', 380000),
(22, 22, 'South America', '2023', 160000),
(23, 23, 'Europe', '2023', 140000),
(24, 24, 'Africa', '2023', 130000),
(25, 25, 'North America', '2023', 180000),
(26, 26, 'North America', '2023', 200000),
(27, 27, 'Europe', '2023', 130000),
(28, 28, 'Europe', '2023', 4500),
(29, 29, 'North America', '2023', 3500),
(30, 30, 'Asia', '2023', 5000),
(31, 31, 'Europe', '2023', 500),
(32, 32, 'Middle East', '2023', 100);