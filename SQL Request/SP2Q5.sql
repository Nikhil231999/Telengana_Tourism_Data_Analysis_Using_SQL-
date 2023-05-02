-- Top 3 and Bottom 3 district with high domestic to foreign tourist Ratio 

select district,
sum(d.visitors) as domestic_visit,
sum(f.visitors) as foreign_visit,
round(sum(d.visitors)/sum(f.visitors),2) as df_ratio
from domestic_visitors as d
join foreign_visitors as f using(district,date)
group by district
having df_ratio is not null
order by df_ratio asc
