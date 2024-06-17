-- Show the ProductName, CompanyName, CategoryName from the products, suppliers, and categories table
SELECT 
    P.product_name, 
    S.company_name, 
    C.category_name
FROM 
    products AS P
JOIN 
    suppliers AS S 
ON 
    S.supplier_id = P.supplier_id
JOIN 
    categories AS C
ON 
    P.category_id = C.category_id;
