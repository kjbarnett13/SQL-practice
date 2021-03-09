--pulls all data from the weather table
select*
from weather;

--pulls the average weather for the tenth month 
select Round(avg(temp),0) as avg_temp
from weather 
where month = 10;

--pulls origin data from the origin with the highest precip
select origin, max(precip) as precip
from weather
group by origin
order by precip desc;

-- pulls temp data for specific days
select month, day, round(avg(temp),4) as avg_temp, min(temp) as min_tem, max(temp)as max_temp
from weather
group by month,day
order by month, day asc;

--  pulls visablity data or each origin per month
select origin, month, min(visib) as visib 
from weather
group by origin, month
order by visib asc;
