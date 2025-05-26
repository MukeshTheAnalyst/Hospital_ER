
------------------------------------------------------------
-- CREATE & SELECT DATABASE for our dataset
------------------------------------------------------------

CREATE DATABASE HospitalER;

USE HospitalER;
------------------------------------------------------------
-- OVERVIEW  of our dataset
------------------------------------------------------------

SELECT *
FROM hospitalER

------------------------------------------------------------
-- EXPLORATORY DATA ANALYSIS
------------------------------------------------------------

-- 1. Dataset Overview

-- a. Total Rows:

SELECT COUNT(*) AS num_rows
FROM hospitalER;

-- b. Total Columns:

SELECT COUNT(*) AS num_cols 
FROM information_schema.columns 
WHERE table_name = 'hospitalER';

------------------------------------------------------------

-- 2. Time Coverage

-- Years of Data & Percentage per Year:

SELECT 
    YEAR([date]) AS years, 
    COUNT(*) AS counts, 
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM hospitalER), 2) AS pct
FROM hospitalER
GROUP BY YEAR([date]);

------------------------------------------------------------

-- 3. Visit Patterns

-- a. Busiest Day of the Week:

SELECT DATENAME(weekday, [date]) AS visit_day,
       COUNT(*) AS number_of_visits
FROM hospitalER
GROUP BY DATENAME(weekday, [date])
ORDER BY number_of_visits DESC;

-- b. Busiest Hour of the Day:

SELECT DATEPART(hour, [date]) AS hour_of_day,
       COUNT(*) AS number_of_visits
FROM hospitalER
GROUP BY DATEPART(hour, [date])
ORDER BY number_of_visits DESC;

------------------------------------------------------------

-- 4. Patient Demographics

-- a. Unique Genders:

SELECT DISTINCT patient_gender
FROM hospitalER

-- b. Gender Distribution:

SELECT patient_gender, COUNT(*) AS counts, 
       ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM hospitalER), 2) AS pct
FROM hospitalER
GROUP BY patient_gender;

-- c. Average Patient Age:

SELECT ROUND(AVG(patient_age), 2) AS average_age
FROM hospitalER;

-- d. Unique Races:

SELECT DISTINCT patient_race
FROM hospitalER;

-- e. Race Distribution:

SELECT patient_race, COUNT(*) AS counts, 
       ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM hospitalER), 2) AS pct
FROM hospitalER
GROUP BY patient_race
ORDER BY pct DESC;

------------------------------------------------------------

-- 5. Wait Times

-- a. Average Wait Time:

SELECT ROUND(AVG(patient_waittime), 2) AS average_waitting_time
FROM hospitalER;

-- b. Maximum Wait Time:

SELECT MAX(patient_waittime)
FROM hospitalER;

-- c. Minimum Wait Time:

SELECT MIN(patient_waittime)
FROM hospitalER;

------------------------------------------------------------

-- 6. Department Referrals

-- a. Distribution Across Departments:

SELECT department_referral, COUNT(*) AS counts, ROUND(COUNT(*) * 100 / (SELECT COUNT(*) FROM hospitalER) , 2) AS pct
FROM hospitalER
GROUP BY department_referral
ORDER BY counts DESC;

