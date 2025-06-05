-- use database insurance
USE insurance_db;

-- retrieve all tables;
SHOW TABLES;

-- retrieve all entries
SELECT * FROM insurance;

-- retrieve non-duplicates entries
SELECT DISTINCT * FROM insurance;

-- retrieve the count of males and females
SELECT sex, COUNT(sex) AS count
FROM insurance
GROUP BY sex; 

-- retrieve the average charges per gender
SELECT sex, AVG(charges) AS average_charges
FROM insurance
GROUP BY sex
ORDER BY average_charges; 

-- retrieve the region wise distribution
SELECT region, COUNT(region) AS total_in_each_region
FROM insurance
GROUP BY region;

-- Avg age and BMI per region
SELECT region, ROUND(AVG(age), 1) AS avg_age, ROUND(AVG(bmi), 2) AS avg_bmi
FROM insurance
GROUP BY region;

-- retrieve the average charges per region
SELECT region, AVG(charges) AS average_charges 
FROM insurance
GROUP BY region
ORDER BY average_charges; 

-- retrieve the number of smokers and non smokers
SELECT smoker, COUNT(smoker) AS count
FROM insurance
GROUP BY smoker;

-- retrieve average charges based on the person being smoker
SELECT smoker, AVG(charges) AS average_charges
FROM insurance
GROUP BY smoker
ORDER BY average_charges; 

-- add a new column age_group
ALTER TABLE insurance
ADD COLUMN age_group VARCHAR(20);

-- populate the column
UPDATE insurance
SET age_group = CASE
    WHEN age < 18 THEN 'Minor'
    WHEN age BETWEEN 18 AND 35 THEN 'Young Adult'
    WHEN age BETWEEN 36 AND 60 THEN 'Adult'
    ELSE 'Senior Citizen'
END;

-- count of persons per age group
SELECT age_group, COUNT(age_group) as count
FROM insurance
GROUP BY age_group;

-- average charges per age group
SELECT age_group, AVG(charges) as average_charges
FROM insurance
GROUP BY age_group
ORDER BY average_charges; 

-- add a new column bmi_group
ALTER TABLE insurance
ADD COLUMN bmi_group VARCHAR(20);

-- populate the column
UPDATE insurance
SET bmi_group = CASE
	WHEN bmi < 18.5 THEN 'Underweight'
    WHEN bmi BETWEEN 18.5 AND 24.9 THEN 'Normal Weight'
    WHEN bmi BETWEEN 25 and 29.9 THEN 'Overweight'
    ELSE 'Obese'
END;

-- retrieve the count of persons in different bmi categories
SELECT bmi_group, COUNT(bmi_group)
FROM insurance
GROUP BY bmi_group;

-- average charges per bmi group
SELECT bmi_group, AVG(charges) as average_charges
FROM insurance
GROUP BY bmi_group
ORDER BY average_charges; 

-- Summary View
CREATE VIEW insurance_summary AS
SELECT 
    region,
    smoker,
    sex,
    COUNT(*) AS total_people,
    ROUND(AVG(age), 1) AS avg_age,
    ROUND(AVG(bmi), 2) AS avg_bmi,
    ROUND(AVG(charges), 2) AS avg_claim_cost
FROM insurance
GROUP BY region, smoker, sex;

SELECT * FROM insurance_summary;