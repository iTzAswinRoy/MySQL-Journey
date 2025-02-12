-- Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.

-- Primary diagnosis is stored in the admissions table.

SELECT p.patient_id, first_name, last_name
FROM patients AS p 
JOIN admissions AS a 
ON p.patient_id = a.patient_id
WHERE diagnosis = 'Dementia';
