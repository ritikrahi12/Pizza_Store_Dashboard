-- Calculate the contribution of each pizza(Pizza_ID) to the total revenue.
Select 
    od.Pizza_ID, 
    SUM(od.Quantity * p.Price) AS Revenue_Per_Pizza, 
    (SUM(od.Quantity * p.Price) * 100.0) / (SELECT SUM(od.Quantity * p.Price) FROM orderdetails od inner join pizza p ON od.Pizza_ID = p.Pizza_ID) AS Contribution_Percentage
FROM 
    orderdetails od
JOIN 
    pizza p 
ON 
    od.Pizza_ID = p.Pizza_ID
GROUP BY 
    od.Pizza_ID
ORDER BY 
    Contribution_Percentage DESC;