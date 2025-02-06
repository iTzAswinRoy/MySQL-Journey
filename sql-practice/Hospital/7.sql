-- Show first name, last name, and the full province name of each patient.
--Example: 'Ontario' instead of 'ON'

SELECT first_name, last_name, pn.province_name
FROM patients AS p
JOIN province_names AS pn 
ON p.province_id = pn.province_id;
