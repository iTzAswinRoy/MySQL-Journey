-- display the first name, last name and number of duplicate patients based on their first name and last name.
-- Ex: A patient with an identical name can be considered a duplicate.
SELECT 
    first_name, 
    last_name, 
    COUNT(*) AS duplicates 
FROM 
    patients
GROUP BY 
    first_name, last_name
HAVING 
    duplicates > 1;
