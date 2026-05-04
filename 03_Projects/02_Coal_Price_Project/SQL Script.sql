CREATE DATABASE data_analyst_project;
USE data_analyst_project;

DESCRIBE dataset;
SELECT * FROM dataset LIMIT 10;

SET SQL_SAFE_UPDATES = 0;
UPDATE dataset
SET `Date` = STR_TO_DATE(`Date`, '%d-%m-%Y');
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
UPDATE dataset 
SET `Price_Indian_en_exg_rate` = NULL 
WHERE `Price_Indian_en_exg_rate` = '';
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE dataset 
MODIFY `Price_Indian_en_exg_rate` DOUBLE;

SET SQL_SAFE_UPDATES = 0;

UPDATE dataset  
SET `Price_Indian_en_exg_rate` = (
    SELECT avg_val FROM (
        SELECT AVG(`Price_Indian_en_exg_rate`) AS avg_val  
        FROM dataset
    ) AS temp
) 
WHERE `Price_Indian_en_exg_rate` IS NULL;

SELECT COUNT(*) AS total_rows FROM dataset;

SELECT 
    AVG(`Price_WTI`) AS avg_wti,
    AVG(`Price_Brent_Oil`) AS avg_brent,
    AVG(`Price_Dubai_Brent_Oil`) AS avg_dubai,
    AVG(`Price_ExxonMobil`) AS avg_exxon,
    AVG(`Price_Natural_Gas`) AS avg_gas,
    AVG(`Price_Indian_en_exg_rate`) AS avg_exchange
FROM dataset;

SELECT 
    MIN(`Price_WTI`) AS min_wti,
    MAX(`Price_WTI`) AS max_wti,
    MAX(`Price_WTI`) - MIN(`Price_WTI`) AS range_wti
FROM dataset;

SELECT 
    VARIANCE(`Price_WTI`) AS var_wti,
    STDDEV(`Price_WTI`) AS std_wti,

    VARIANCE(`Price_Brent_Oil`) AS var_brent,
    STDDEV(`Price_Brent_Oil`) AS std_brent
FROM dataset;

SELECT AVG(Price_WTI) AS median_wti
FROM (
    SELECT Price_WTI,
           ROW_NUMBER() OVER (ORDER BY Price_WTI) AS rn,
           COUNT(*) OVER () AS total
    FROM dataset
    WHERE Price_WTI IS NOT NULL
) AS t
WHERE rn IN (FLOOR((total + 1)/2), FLOOR((total + 2)/2));

SELECT `Price_WTI`, COUNT(*) AS freq
FROM dataset
GROUP BY `Price_WTI`
ORDER BY freq DESC
LIMIT 1;


SET @mean_val = (SELECT AVG(Price_WTI) FROM dataset);
SET @std_dev = (SELECT STDDEV(Price_WTI) FROM dataset);

-- Step 2: Calculate skewness
SELECT 
    AVG(POWER(Price_WTI - @mean_val, 3)) / POWER(@std_dev, 3) AS skewness
FROM dataset;

SELECT 
    AVG(POWER(Price_WTI - mean_val, 4)) / POWER(MAX(std_dev), 4) - 3 AS kurtosis
FROM (
    SELECT 
        d.Price_WTI,
        s.mean_val,
        s.std_dev
    FROM dataset d
    CROSS JOIN (
        SELECT 
            AVG(Price_WTI) AS mean_val,
            STDDEV(Price_WTI) AS std_dev
        FROM dataset
    ) s
) AS final;

SELECT 
    YEAR(`Date`) AS year,
    AVG(`Price_WTI`) AS avg_wti,
    AVG(`Price_Brent_Oil`) AS avg_brent
FROM dataset
GROUP BY year
ORDER BY year;

SELECT 
    (AVG(`Price_WTI` * `Price_Brent_Oil`) - 
     AVG(`Price_WTI`) * AVG(`Price_Brent_Oil`)) /
    (STDDEV(`Price_WTI`) * STDDEV(`Price_Brent_Oil`)) 
    AS correlation
FROM dataset;