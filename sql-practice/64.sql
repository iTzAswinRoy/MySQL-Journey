-- Show the category_name and the average product unit price for each category rounded to 2 decimal places.
SELECT 
    category_name, 
    ROUND(AVG(unit_price),2) AS average_unit_price
FROM
    categories AS C 
JOIN 
    products AS P 
ON 
    C.category_id = P.category_id
GROUP BY
    category_name;
