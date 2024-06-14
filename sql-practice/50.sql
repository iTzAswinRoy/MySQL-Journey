-- For each day display the total amount of admissions on that day. 
-- Display the amount changed from the previous date.
SELECT 
		admission_date, 
		COUNT(admission_date) AS total_admissions, 
		(COUNT(*) - LAG(COUNT(admission_date)) OVER (ORDER BY admission_date)) AS date_difference
FROM 
		admissions
GROUP BY 
		admission_date;
