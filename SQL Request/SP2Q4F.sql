-- Peak and low Seasons Month for hyderabad 

select district,month,
sum(visitors) as total_foreign_visitors 
from foreign_visitors
where district="Hyderabad"
group by district, month
order by total_foreign_visitors desc