-- For each doctor, display their id, full name, and the first and last admission date they attended.
SELECT 
    d.doctor_id, 
    CONCAT(d.first_name,' ',d.last_name) AS full_name, 
    MIN(a.admission_date) AS first_ad, 
    MAX(a.admission_date) AS last_ad
FROM 
    admissions AS a
JOIN 
    doctors AS d 
ON 
    a.attending_doctor_id = d.doctor_id
GROUP BY 
    doctor_id;
