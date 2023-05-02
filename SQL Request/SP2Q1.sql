-- Top 10 District with Highest Numbers of  domestic vistiors 

select district,
sum(visitors) as total_domestic_visitors
from domestic_visitors
group by district
order by total_domestic_visitors desc
limit 10;