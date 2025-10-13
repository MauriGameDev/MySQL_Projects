DROP DATABASE IF EXISTS Car_Manufacturers;
CREATE DATABASE Car_Manufacturers;
USE Car_Manufactureres;


CREATE TABLE MANUFACTURERS (
    Manufacturer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Manufacturer_Name VARCHAR(35) NOT NULL,
    Country VARCHAR(35) NOT NULL,
    Founded_Year INT NOT NULL,
    Revenue_USD_Billion INTEGER NOT NULL
);


CREATE TABLE CARS (
    Model_ID INT AUTO_INCREMENT PRIMARY KEY,
    Model_Name VARCHAR(35) NOT NULL,
    Car_Type VARCHAR(35),
    Launch_Year INT NOT NULL,
    Car_Price INT,
    Manufacturer_ID INT,
    FOREIGN KEY(Manufacturer_ID) REFERENCES MANUFACTURERS(Manufacturer_ID)
);

CREATE TABLE REGIONS (
    Region_ID INT AUTO_INCREMENT PRIMARY KEY,
    Region_Name VARCHAR(55)
);


CREATE TABLE SALES (
    Sales_ID INT NOT NULL,
    Model_ID INT NOT NULL,
    Region_ID INT NOT NULL,
    Year INT NOT NULL,
    Units_Sold INT NOT NULL,
    PRIMARY kEY(Sales_ID),
    FOREIGN KEY (Model_ID) REFERENCES CARS (Model_ID),
    FOREIGN KEY (Region_ID) REFERENCES REGIONS(Region_ID)
);





