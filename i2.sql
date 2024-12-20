-- Identify the most common pizza size ordered.
select Size,count(Size) as Frequency
from pizza
inner join orderdetails
on pizza.Pizza_Id=orderdetails.Pizza_Id
group by Size
order by Frequency desc
limit 1