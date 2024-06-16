-- Show the province_id(s), sum of height; where the total sum of its patient's height is greater than or equal to 7,000.
SELECT 
    province_id, SUM(height)
FROM 
    patients
GROUP BY 
    province_id
HAVING 
    SUM(height) >= 7000;
