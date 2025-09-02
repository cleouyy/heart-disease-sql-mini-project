-- 1. Overall disease rate
SELECT ROUND(100.0 * AVG(target), 2) AS disease_rate_percent
FROM heart_data;

-- 2. Disease rate by sex
SELECT sex,
       COUNT(*) AS n,
       SUM(target) AS disease_cases,
       ROUND(100.0*SUM(target)/COUNT(*),2) AS disease_rate_percent
FROM heart_data
GROUP BY sex;

-- 3. Chest pain type vs disease
SELECT cp AS chest_pain_type,
       COUNT(*) AS n,
       ROUND(100.0*AVG(target),2) AS disease_rate_percent
FROM heart_data
GROUP BY cp
ORDER BY disease_rate_percent DESC;

