-- Show the total amount of male patients and the total amount of female patients in the patients table.
-- Display the two results in the same row.

SELECT (SELECT COUNT(gender) FROM patients WHERE gender = 'M'), 
(SELECT  COUNT(gender) FROM patients WHERE gender = 'F');
