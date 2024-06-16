-- We need a breakdown for the total amount of admissions each doctor has started each year. 
-- Show the doctor_id, doctor_full_name, specialty, year, total_admissions for that year.
SELECT 
    d.doctor_id, 
    CONCAT(d.first_name, ' ', d.last_name) AS full_name, 
    d.specialty, 
    YEAR(a.admission_date) AS admission_year, 
    COUNT(*) AS total_admissions
FROM 
    admissions AS a 
LEFT JOIN 
    doctors AS d   
ON 
    a.attending_doctor_id = d.doctor_id
GROUP BY 
    d.doctor_id, 
    full_name, 
    specialty, 
    admission_year;
