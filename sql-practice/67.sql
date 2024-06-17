-- Show how much money the company lost due to giving discounts each year
-- Order the years from most recent to least recent. Round to 2 decimal places
SELECT 
    year(O.order_date) AS Order_year, 
    ROUND(SUM(P.unit_price *OD.quantity * OD.discount),2) AS Discount_amount
FROM 
    order_details AS OD
JOIN 
    orders AS O 
ON 
    OD.order_id = O.order_id
JOIN 
    products AS P 
ON 
    P.product_id = OD.product_id
GROUP BY 
    Order_year
ORDER BY 
    Order_year DESC;
