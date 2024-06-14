-- Show the percent of patients that have 'M' as their gender. 
-- Round the answer to the nearest hundreth number and in percent form.
SELECT 
		CONCAT(ROUND(100 * AVG(gender = 'M'), 2),'%') AS Percentage
FROM 
		patients;
