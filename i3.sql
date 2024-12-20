-- Determine the orders by date and calculate the average number of pizzas ordered per day
select Order_Date,round(avg(Quantity),0) as Avg_Pizza_Ordered
from orders
inner join orderdetails
on orderdetails.Order_Id=orders.Order_Id
group by Order_Date
order by Order_Date