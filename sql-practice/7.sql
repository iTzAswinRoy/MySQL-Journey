-- Show first name, last name, and the full province name of each patient.
SELECT first_name, last_name, province_name
FROM patients AS p
JOIN province_names as pn
ON p.province_id = pn.province_id;
