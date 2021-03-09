-- selects all fields
SELECT *
from planes;

-- only selects planes that are built by 
SELECT *
from planes
where manufacturer = 'BOEING';

-- pulls planes built in between 1980 and 1990
SELECT *
from planes
where  year  between  1980 and 1990;

-- only selects planes built by 'CESSNA', 'BOEING', 'AIRBUS'
SELECT *
from planes
where manufacturer in ( 'CESSNA', 'BOEING', 'AIRBUS');

-- returns planes where the year built is unknown
SELECT *
from planes
where year is null;

-- returns planes where the speed field is not null
SELECT *
from planes
where speed is not null;

-- pulls planes with seating less than 50 and greater than 200
SELECT *
from planes
where  seats not  between  50 and 200;

-- shows planes with turbo engines
SELECT *
from planes
where  engine Ilike('turbo%');

-- returns planes whose model name is in the format XXX-XXX
SELECT *
from planes
where  model ilike'%%%-%%%';

-- pulls planes built in between 1980 and 1990 that doesnt have two engines,
-- and was built by ('BOEING' or 'CESSNA')
SELECT *
from planes
where year  between  1980 and 1990
	and engines != 2   
	and speed is not null
	and manufacturer in ('BOEING' , 'CESSNA');
	
-- pulls planes (built in between 1980 and 1990 that doesnt have two engines)
--or was built by ('BOEING' or 'CESSNA')
SELECT *
from planes
where (year  between  1980 and 1990
	and engines != 2   
	and speed is not null)
	or manufacturer in ('BOEING' , 'CESSNA');

-- pulls planes (built in between 1980 and 1990 that doesnt have two engines)
--speed nullor was built by ('BOEING' or 'CESSNA')
SELECT *
from planes
where (year  between  1980 and 1990
	and engines != 2)   
	and speed is not null
	or manufacturer in ('BOEING' , 'CESSNA');