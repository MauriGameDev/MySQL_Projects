--Expansion of Tables for each Manufacturer

CREATE TABLE TOYOTA {
    ID_No INT PRIMARY KEY,
    Manufacturer_ID INT DEFAULT 1,
    CarModel_ID INT NOT NULL,
    CarModel_Name VARCHAR(35),
    Type VARCHAR(35),
    Price INT NOT NULL
};

CREATE TABLE FORD {
    ID_No INT PRIMARY KEY,
    Manufacturer_ID INT DEFAULT 2,
    CarModel_ID INT NOT NULL,
    CarModel_Name VARCHAR(35),
    Type VARCHAR(35),
    Price INT NOT NULL
};