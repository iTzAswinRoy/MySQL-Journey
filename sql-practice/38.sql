-- For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.
SELECT 
    CONCAT(p.first_name,' ',p.last_name) AS full_name, 
    a.diagnosis, CONCAT(d.first_name,' ',D.last_name) AS full_name
FROM 
    patients AS p 
JOIN 
    admissions AS a
ON 
    p.patient_id = a.patient_id
JOIN 
    doctors as d 
ON 
    d.doctor_id = a.attending_doctor_id;
