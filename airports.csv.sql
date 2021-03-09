SELECT faa, name, lat, lon
FROM airports;


-- 4. Do the same as 3, but this time
-- rename lat and lon as 
-- latitude and longitude, respectively.

SELECT faa, name, lat AS latitude, lon AS longitude
FROM airports;

-- 5. Do the same as 4, but this time
-- round the results of latitude and
-- longitude to two decimals

SELECT faa, name, ROUND(lat,2) AS latitude, ROUND(lon,2) AS longitude
FROM airports;

-- 6. This database also has
-- a weather table. Return
-- a field, temp_celsius, which
-- converts the measurements in the
-- field temp into Celsius. 
-- The formula is C = (F - 32) * 5/9

SELECT (temp - 32) * 5/9 AS temp_celsius
FROM weather;

-- 7. Now go to the planes table.
-- Create and return a field, "plane_seats"
-- with the format, 
-- "This plane seats X," where
-- X is the value of the seats field.
-- For example, row 1 of this field should read,
-- "This plane seats 55."

SELECT CONCAT('This plane seats ', seats,'.') AS plane_seats
FROM planes;

-- 8. Now create and return a field, "model_seats."
-- The first row of this field should read,
-- "This 2004 Embraer EMB-145XR seats 55."
-- Hint: use the INITCAP() function to convert
-- manufacturer to proper case. 

SELECT CONCAT('This ',year,' ',INITCAP(manufacturer),' ',model,' seats ', seats,'.')
	AS model_seats
FROM planes; 

-- 9. Save the results of your script 
-- as flights_query.sql

-- To do this, select the floppy disk
-- on the ribbon above the query editor.
-- Make sure to include the .sql file type
-- when saving. 



