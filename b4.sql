-- Calculate the average quantity of pizzas ordered per order.
select round(avg(quantity),0) as Avg_Pizza_Quantity
from orderdetails