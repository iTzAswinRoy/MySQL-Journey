-- Show all of the days of the month (1-31) and how many admission_dates occurred on that day. Sort by the day with most admissions to least admissions.
SELECT 
		DAY(admission_date) as days, 
		COUNT(admission_date) as no_of_admissions
FROM 
		admissions
GROUP BY 
		days
ORDER BY 
		no_of_admissions DESC;
