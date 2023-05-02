-- Top 10 District with Highest Numbers of Foreign vistiors 

select district,
sum(visitors) as total_foreign_visitors
from foreign_visitors
group by district
order by total_foreign_visitors desc
limit 10;