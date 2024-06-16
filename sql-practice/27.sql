-- Show all allergies ordered by popularity. Remove NULL values from query.
SELECT 
    allergies, 
    COUNT(*) AS popularity
FROM 
    patients
WHERE 
    COALESCE(allergies, '') <> ''
GROUP BY 
    allergies
ORDER BY 
    popularity DESC;
