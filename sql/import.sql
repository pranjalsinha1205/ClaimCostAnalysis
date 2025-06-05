-- creating database 
CREATE DATABASE IF NOT EXISTS insurance_db;

-- creating table 
CREATE TABLE `insurance_db`.`insurance` 
(`age` int, `sex` text, `bmi` double, `children` int, 
`smoker` text, `region` text, `charges` double);