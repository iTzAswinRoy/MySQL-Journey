-- Show the provinces that has more patients identified as 'M' than 'F'. Must only show full province_name
SELECT 
		province_name	
FROM 
		(SELECT 
					pn.province_name, 
					SUM(p.gender = 'M') AS male, 
					SUM(p.gender = 'F') AS female 
     FROM 
		     patients AS p
     JOIN 
		     province_names AS pn
     ON 
		     p.province_id = pn.province_id
     GROUP BY 
		     pn.province_name)
WHERE 
		male > female;
