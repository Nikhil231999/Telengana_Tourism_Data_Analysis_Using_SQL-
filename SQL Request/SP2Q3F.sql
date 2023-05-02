-- Bottom 3 District Based On CAGR (Compound Annual Growth Rate) Of foreign Visitors 
-- Formula Used CAGR= (FV/BV)^(1/n)-1
-- FV:-Final Value 
-- BV:-Beginning Value
-- n:- No Of Period (2019-2016) =3 

with T1 as(
select district,year,sum(visitors) as FV 
from foreign_visitors 
where year=2019
group by district),
T2 as (
select district,year,sum(visitors) as BV 
from foreign_visitors 
where year=2016
group by district)

select district,FV,BV,
round((pow((FV/BV),1/3)-1)*100,2) as CAGR
from T1 join T2 
using(district)
having CAGR is not null
order by CAGR asc 
limit 5
