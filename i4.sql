-- Retrieve the top 3 most sold pizzas based on quantity.
Select Pizza_Name,sum(Quantity) as Total_Quantity
from pizza
inner join orderdetails
on pizza.Pizza_Id=orderdetails.Pizza_Id
group by Pizza_Name
order by Total_Quantity desc
limit 3