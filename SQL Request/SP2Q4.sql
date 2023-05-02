-- Peak and low Seasons Month for hyderabad 

select * from domestic_visitors;
select district,month,
sum(visitors) as total_domestic_visitors 
from domestic_visitors
where district="Hyderabad"
group by district, month
order by total_domestic_visitors desc