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

CREATE TABLE RREGIONS (
    Region_ID INT NOT NULL PRIMARY KEY,
    Region_Name VARCHAR(35),
    Continent VARCHAR(35) NOT NULL
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
(1, 1, 'Corolla', 'Sedan', '2018', 22000),
(2, 1, 'RAV4', 'SUV', '2019', 290000),
(3, 2, 'F-150','Truck', '2020', 41000),
(4, 2, 'Mustang', 'Coupe', '2021', 37000),
(5, 3, 'Golf', 'Hatchback', '2018', 250000),
(6, 3, 'Tiguan', 'SUV', '2020', 32000),
(7, 4, 'Sonata', 'Sedan', '2019', 24000),
(8, 4, 'Tucson', 'SUV', '2021', 28000),
(9, 5, '3 Series', 'Sedan', '2020', 42000),
(10, 5, 'X5', 'SUV', '2021', 42000),
(11, 6, 'C-Class', 'Sedan', '2019', 43000),
(12, 6, 'GLE', 'SUV', '2021', 65000),
(13, 7, 'Civic', 'Sedan', '2020', 23000),
(14, 7, 'CR-V', 'SUV', '2021', 29000),
(15, 8, 'Model 3', 'Sedan', '2019', 40000),
