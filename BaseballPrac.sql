--pulls all data people table 
select*
from people;

--Find the average height of players born after 1950 for each birth country, 
--sorted from high to low. Your query should only include countries who have 
--a max height <= 75 inches. What is the fourth country this query returns?

select birthcountry, round(avg(height),0) as avg_height
from people
where birthyear > 1950
group by birthcountry
having round(avg(height),0)<=75
order by avg_height desc;

--Find for each birth year the average weight of players who both bat 
--and throw with their left hand. Keep only the birth years where the
--average weight is greater than 200. Which birth year has the heaviest 
--average weight?

select birthyear, round(avg(weight),0) as avg_weight 
from people
where bats= 'L' and throws = 'L'
group by birthyear
having avg(weight)  > 200
order by avg_weight desc;


select bats, round(avg(height),0) as avg_height
from people
group by bats
having avg(weight)  > 200;

--What is the average weight for all players who are born in the USA 
--and bat left-handed, rounded to the nearest whole number?
select birthcountry,bats, round(avg(weight),0) as avg_weight
from people 
where bats ='L' and birthcountry='USA'
group by birthcountry,bats;


--For all players who have the first name of "David" what is 
--the height of the tallest player (whole number in inches?)
select max(height) as max_height
from people 
where namefirst = 'David'
group by height
;