-- Calculate the percentage contribution of each pizza type (Veg/Non-Veg) to total revenue.
Select Category,
	   sum(Final_Amount) as Revenue,
	    (sum(Final_Amount) * 100.0/ (select sum(Final_Amount) from orderdetails)) as Percenrage_Contribution
from pizza
inner join orderdetails
on pizza.Pizza_Id=orderdetails.Pizza_Id
group by Category