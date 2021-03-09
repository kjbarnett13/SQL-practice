--pulls alll info from the panes tba
SELECT *
FROM planes;

-- records planes oldest to newest
SELECT *
FROM planes
order by year asc ;

-- order by manufacturer Z to A
SELECT *
FROM planes
order by manufacturer desc ;

-- order by sorted oldest to newest then 
--manufacturer Z to A then then by model, both A-Z
SELECT *
FROM planes
order by year asc, manufacturer asc,model asc ;

--Return all records, sorted low to high by engines, 
--then high to low by seats.
SELECT *
FROM planes
order by engines asc, seats desc ;

--Return all records of planes built before 2000, sorted A-Z by engine.
SELECT *
FROM planes
where year > 2000 
order by engines ;

--Return the top 10 records, sorted high to low by seats.
select * 
from planes
order by seats desc
limit 10;

--Return the top 10 records of planes built before 1990, 
--sorted high to low by seats.
select * 
from planes
where year <1990
order by seats desc
limit 10;

--Count the number of all records, the number of speed records, 
--and the number of year records. Name these fields count_total,
--count_speed, and count_year, respectively.
select count(*) as count_total, count(speed)as count_speed, count(year) as count_year
from planes;

--Count the number of speed records where year is before 1980
select count(speed) as count_speed
from planes
where year <1980;

--List the distinct values for the engine field
select distinct(engines)
from planes;

--List the distinct values of combinations for year, 
--manufacturer, and model, sorted by manufacturer A-Z, 
--then year oldest to newest, and then model A-Z.
select distinct year, manufacturer, model
from planes
order by manufacturer asc, year asc, model asc;
