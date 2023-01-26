set Global local_infile=1;
CREATE DATABASE LAB04_EC5070_2019E166;
USE LAB04_EC5070_2019E166;
CREATE TABLE SAMPLE_POPULATION
(CountryCode INT, CountryName VARCHAR(20), Year YEAR, RaceCode INT, 
RaceName VARCHAR(100),Gender VARCHAR(10) , Age INT , Population INT	
);
CREATE TABLE POPULATION
(CountryCode INT, CountryName VARCHAR(20), Year YEAR, RaceCode INT, 
RaceName VARCHAR(100),Gender VARCHAR(10) , Age INT , Population INT	
);

LOAD DATA LOCAL INFILE 'G:/ExcelSheet/Population.csv'
INTO TABLE POPULATION FIELDS TERMINATED BY ',' ENCLOSED
BY '"' LINES TERMINATED 
BY '\n' IGNORE 1 ROWS;

SELECT Population, RaceName
FROM LAB04_EC5070_2019E166.POPULATION
WHERE ((LAB04_EC5070_2019E166.POPULATION.Gender="Female")AND(LAB04_EC5070_2019E166.POPULATION.Age = 15)AND (LAB04_EC5070_2019E166.POPULATION.CountryName = "Alameda"));

SELECT Population, RaceName
FROM LAB04_EC5070_2019E166.SAMPLE_POPULATION
WHERE ((LAB04_EC5070_2019E166.SAMPLE_POPULATION.Gender="Female")AND(LAB04_EC5070_2019E166.SAMPLE_POPULATION.Age = 15)AND (LAB04_EC5070_2019E166.SAMPLE_POPULATION.CountryName = "Alameda"));

SELECT Population
FROM LAB04_EC5070_2019E166.SAMPLE_POPULATION
WHERE ((LAB04_EC5070_2019E166.SAMPLE_POPULATION.Gender="Male")AND (LAB04_EC5070_2019E166.SAMPLE_POPULATION.CountryName = "ImperiaL"));

SELECT Population
FROM LAB04_EC5070_2019E166.POPULATION
WHERE ((LAB04_EC5070_2019E166.POPULATION.Gender="Male")AND (LAB04_EC5070_2019E166.POPULATION.CountryName = "ImperiaL"));

SELECT *
FROM LAB04_EC5070_2019E166.SAMPLE_POPULATION
WHERE (((LAB04_EC5070_2019E166.SAMPLE_POPULATION.Age >= 6)AND(LAB04_EC5070_2019E166.SAMPLE_POPULATION.Age <= 14)) AND (LAB04_EC5070_2019E166.SAMPLE_POPULATION.CountryName = "Inyo"));

SELECT *
FROM LAB04_EC5070_2019E166.POPULATION
WHERE (((LAB04_EC5070_2019E166.POPULATION.Age >= 6)AND(LAB04_EC5070_2019E166.POPULATION.Age <= 14)) AND (LAB04_EC5070_2019E166.POPULATION.CountryName = "Inyo"));

SELECT COUNT(*)
FROM LAB04_EC5070_2019E166.SAMPLE_POPULATION;

SELECT COUNT(*)
FROM LAB04_EC5070_2019E166.POPULATION;

SELECT DISTINCT CountryName
FROM LAB04_EC5070_2019E166.SAMPLE_POPULATION;

SELECT DISTINCT CountryName
FROM LAB04_EC5070_2019E166.POPULATION;

ALTER TABLE LAB04_EC5070_2019E166.SAMPLE_POPULATION  ADD PRIMARY KEY  (CountryCode, CountryName, Year, RaceCode , RaceName ,Gender , Age);

ALTER TABLE LAB04_EC5070_2019E166.POPULATION  ADD PRIMARY KEY  (CountryCode, CountryName, Year, RaceCode , RaceName ,Gender , Age);

CREATE INDEX AlfabutOrder ON LAB04_EC5070_2019E166.POPULATION(CountryName);
SHOW INDEX FROM 

