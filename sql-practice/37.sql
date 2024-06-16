-- Display the total amount of patients for each province. Order by descending.
SELECT 
    pn.province_name, 
    COUNT(p.patient_id) As total
FROM 
    patients AS p 
JOIN 
    province_names AS pn 
ON 
    p.province_id = pn.province_id
GROUP BY 
    pn.province_id
ORDER BY 
    total DESC;
