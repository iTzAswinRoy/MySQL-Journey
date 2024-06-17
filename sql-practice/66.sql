-- Show the employee's first_name and last_name, a "num_orders" column with a count of the orders taken
-- Create a seperate column called "Shipped" that displays "On Time" if the order shipped_date is less or equal to the required_date, "Late" if the order shipped late.
-- Order by employee last_name, then by first_name, and then descending by number of orders.
SELECT
    E.first_name, 
    E.last_name, 
    COUNT(O.order_id) AS numOfOrders, 
    (CASE WHEN shipped_date <= required_date THEN 'On Time'
     ELSE 'Late'
     END) AS Shipped
FROM 
    orders AS O 
JOIN 
    employees AS E 
ON 
    O.employee_id = E.employee_id
GROUP BY 
    E.first_name, 
    E.last_name, 
    shipped
ORDER BY
    E.last_name,
    E.first_name, 
    numOfOrders DESC;
