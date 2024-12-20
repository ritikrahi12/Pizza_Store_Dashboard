-- join the necessary tables to find the total quantity of each pizza category ordered.
select Category,sum(Quantity) as Total_Quantity
from pizza
inner join orderdetails
on pizza.Pizza_Id=orderdetails.Pizza_Id
group by Category
