-- Show the patient id and the total number of admissions for patient_id 579.

select patient_id , COUNT(admission_date)
FROM admissions
WHERE patient_id = 579;
