-- Find the pizza that generates the highest revenue.
Select Pizza_Name, SUM(Final_Amount) AS Total_Revenue 
FROM pizza 
inner join orderdetails ON
pizza.Pizza_ID = orderdetails.Pizza_ID 
group by Pizza_Name 
order by Total_Revenue DESC 
LIMIT 1;