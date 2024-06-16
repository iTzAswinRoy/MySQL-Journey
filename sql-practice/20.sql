-- Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.
SELECT 
    a.patient_id, 
    p.first_name, 
    p.last_name
FROM 
    patients AS p
JOIN 
    admissions AS a
ON 
    p.patient_id = a.patient_id
WHERE 
    a.diagnosis = 'Dementia';  
