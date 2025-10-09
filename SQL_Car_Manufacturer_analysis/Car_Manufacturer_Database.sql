DROP DATABASE IF EXISTS 'Car_Manufacturers'
CREATE DATABASE 'Car_Manufacturers';
USE 'Car Manufactureres';


CREATE TABLE 'MANUFACTURERS' (
    Manufactorer_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Car_Name VARCHAR(35) NOT NULL,
    Country VARCHAR(35) NOT NULL,
    Founded_Year INT NOT NULL,
    Revenue(Billion USD) INTEGER NOT NULL
);


CREATE TABLE 'CARS' (
    Model_ID INT NOT NULL,
    Model_Name VARCHAR(35) NOT NULL,
    Car_Type VARCHAR(12),
    Launch_Year INT NOT NULL,
    Car_Price INT,
    Manufactorer_ID INT NOT NULL,
    PRIMARY KEY(Model_ID)
    FOREIGN KEY (Manufactorer_ID) REFERENCES MANUFACTURERS (Manufactorer_ID)
);


CREATE TABLE 'SALES' (
    Sales_ID INT NOT NULL,
    Model_ID INT NOT NULL,
    Region VARCHAR(35) NOT NULL,
    Year INT NOT NULL,
    Units_Sold INT NOT NULL,
    PRIMARY kEY(Sales_ID),
    FOREIGN KEY (Model_ID) REFERENCES CARS (Model_ID)
);

CREATE TABLE 'RREGIONS' (
    Region_ID INT NOT NULL PRIMARY KEY,
    Region_Name VARCHAR(35) NOT NULL,
    Continent VARCHAR(35) NOT NULL
);