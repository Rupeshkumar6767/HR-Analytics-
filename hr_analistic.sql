SELECT * FROM customer;
-- 1 
SELECT 
COUNT(*) AS employee_count
FROM customer;

--2 Attrition Count
SELECT 

COUNT(*) AS attrition_count

FROM customer

WHERE "Attrition" = 'Yes';

-- 3 Attrition Rate
SELECT ROUND(( COUNT(CASE WHEN "Attrition"='Yes'
THEN 1 END ) * 100.0)/ COUNT(*),2
) 
AS attrition_rate FROM customer;


-- 4. Attrition Rate
SELECT ROUND((COUNT(CASE WHEN "Attrition"='Yes' THEN 1 END) * 100.0) / COUNT(*),2) AS attrition_rate 
FROM customer;

-- 5. Active Employees
SELECT COUNT(*) - COUNT(CASE WHEN "Attrition"='Yes' THEN 1 END) AS active_employee 
FROM customer;

-- 6. Average Employee Age
SELECT ROUND(AVG("Age"),2) AS average_age 
FROM customer;

-- 7. Average Monthly Income
SELECT ROUND(AVG("Monthly Income"),2) AS average_salary 
FROM customer;

-- 8. Department Wise Employee Count
SELECT "Department", COUNT(*) AS total_employee 
FROM customer 
GROUP BY "Department" 
ORDER BY total_employee DESC;

-- 9. Department Wise Attrition
SELECT "Department", COUNT(*) AS attrition_count 
FROM customer 
WHERE "Attrition"='Yes' 
GROUP BY "Department" 
ORDER BY attrition_count DESC;

-- 10. Gender Distribution
SELECT "Gender", COUNT(*) AS total_employee 
FROM customer 
GROUP BY "Gender";

-- 11. Gender Wise Attrition
SELECT "Gender", COUNT(*) AS attrition_count 
FROM customer 
WHERE "Attrition"='Yes' 
GROUP BY "Gender";

-- 12. Education Field Analysis
SELECT "Education Field", COUNT(*) AS total_employee 
FROM customer 
GROUP BY "Education Field" 
ORDER BY total_employee DESC;

-- 13. Education Field Attrition
SELECT "Education Field", COUNT(*) AS attrition_count 
FROM customer 
WHERE "Attrition"='Yes' 
GROUP BY "Education Field" 
ORDER BY attrition_count DESC;

-- 14. Job Role Analysis
SELECT "Job Role", COUNT(*) AS total_employee 
FROM customer 
GROUP BY "Job Role" 
ORDER BY total_employee DESC;

-- 15. Job Satisfaction Analysis
SELECT "Job Role", ROUND(AVG("Job Satisfaction"),2) AS avg_job_satisfaction 
FROM customer 
GROUP BY "Job Role" 
ORDER BY avg_job_satisfaction DESC;

-- 16. Age Group Analysis
SELECT 
CASE 
WHEN "Age" < 25 THEN 'Under 25'
WHEN "Age" BETWEEN 25 AND 34 THEN '25-34'
WHEN "Age" BETWEEN 35 AND 44 THEN '35-44'
WHEN "Age" BETWEEN 45 AND 54 THEN '45-54'
ELSE 'Over 55'
END AS age_group,

COUNT(*) AS total_employee

FROM customer 

GROUP BY age_group 

ORDER BY total_employee DESC;

-- 17. Overtime Analysis
SELECT "Over Time", COUNT(*) AS total_employee 
FROM customer 
GROUP BY "Over Time";

-- 18. Overtime Attrition
SELECT "Over Time", COUNT(*) AS attrition_count 
FROM customer 
WHERE "Attrition"='Yes' 
GROUP BY "Over Time";

-- 19. Marital Status Analysis
SELECT "Marital Status", COUNT(*) AS total_employee 
FROM customer 
GROUP BY "Marital Status";

-- 20. Years At Company Analysis
SELECT "Years At Company", COUNT(*) AS total_employee 
FROM customer 
GROUP BY "Years At Company" 
ORDER BY "Years At Company";

-- 21. Monthly Income by Department
SELECT "Department", ROUND(AVG("Monthly Income"),2) AS avg_salary 
FROM customer 
GROUP BY "Department" 
ORDER BY avg_salary DESC;

-- 22. Work Life Balance Analysis
SELECT "Work Life Balance", COUNT(*) AS total_employee 
FROM customer 
GROUP BY "Work Life Balance" 
ORDER BY "Work Life Balance";

-- 23. Performance Rating Analysis
SELECT "Performance Rating", COUNT(*) AS total_employee 
FROM customer 
GROUP BY "Performance Rating";

-- 24. Employee Count by Business Travel
SELECT "Business Travel", COUNT(*) AS total_employee 
FROM customer 
GROUP BY "Business Travel";

-- 25. Correlation Type Query
SELECT "Age", "Monthly Income", "Years At Company", "Job Satisfaction" 
FROM customer;