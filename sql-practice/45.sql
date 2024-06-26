-- All patients who have gone through admissions, can see their medical documents on our site. 
-- Those patients are given a temporary password after their first admission. Show the patient_id and temp_password.
-- The password must be the following, in order:
-- 1. patient_id
-- 2. the numerical length of patient's last_name
-- 3. year of patient's birth_date
SELECT 
    p.patient_id, 
    CONCAT(p.patient_id, LENGTH(p.last_name), YEAR(p.birth_date)) AS password
FROM 
    patients AS p 
JOIN 
    admissions AS a 
ON 
    p.patient_id = a.patient_id
GROUP BY 
    p.patient_id;
