-- Show first_name, last_name, and the total number of admissions attended for each doctor.
-- Every admission has been attended by a doctor.
SELECT 
    d.first_name, 
    d.last_name, 
    COUNT(a.admission_date)
FROM 
    admissions AS a
JOIN 
    doctors AS d 
ON 
    a.attending_doctor_id = d.doctor_id
GROUP BY 
    attending_doctor_id;
