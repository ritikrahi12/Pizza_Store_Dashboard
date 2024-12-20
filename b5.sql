-- Retrieve the total sales for veg and non-veg pizzas separately.
select category,sum(Final_Amount) as Total_Sales
from pizza
inner join orderdetails
on pizza.Pizza_Id=orderdetails.Pizza_Id
group by category