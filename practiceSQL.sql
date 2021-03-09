-- houseprieces data base, 
-- pulls all prices for information for houses built in 2003

SELECT *
FROM houseprices
WHERE yearbuilt = 2003;

-- shows houses on paved streets
SELECT *
FROM houseprices
WHERE street = 'Pave';

--shows houses whose remodele year is = to year built 
SELECT *
FROM houseprices
WHERE yearremodadd=yearbuilt ;

--shows house whose lot size is greater than 8000spft 
SELECT yearbuilt, saleprice
FROM houseprices
WHERE lotarea < 8000;

--shows house information if the lotsize id greater than 10,000spft and the
--year built is less than 1995
SELECT *
FROM houseprices
WHERE lotarea > 10000 AND yearbuilt <= 1995;

--shows house information if the lotsize id greater than 10,000spft and the
--year built is less than 1995
SELECT *
FROM houseprices
WHERE lotarea > 10000 or yearbuilt <= 1995;

--shows all houses bulit in between 1995-2000
SELECT *
FROM houseprices
WHERE yearbuilt BETWEEN 1995 AND 2000;

--shows houses built in 01,07,08,09
SELECT * 
FROM houseprices
WHERE yearbuilt IN(2001, 2007, 2008, 2009);

-- records houses not built between 95-01
SELECT *
FROM houseprices
WHERE yearbuilt NOT BETWEEN 1995 AND 2000;

--returns houses where alley is null 
SELECT *
FROM houseprices
WHERE alley IS NULL;

--returns houses where alley is not null 
SELECT *
FROM houseprices
WHERE alley IS not NULL;

-- shows all houses that use some type of gas heating
SELECT *
FROM houseprices
WHERE heating LIKE 'Gas%';

-- Return all records where mszoning starts with 'R':
SELECT *
FROM houseprices
WHERE mszoning LIKE 'R%';

--^^^
SELECT *
FROM houseprices
WHERE mszoning ILIKE 'r%';

--shows house information for houses between 1980-85,
--have a gable roof
-- alley=! null
-- and that are not in north ames,collgcr
SELECT saleprice, salecondition
FROM houseprices
WHERE yearbuilt BETWEEN 1980 AND 1985
    AND roofstyle = 'Gable'
    AND alley IS NOT NULL
AND neighborhood NOT IN ('NAmes', 'CollgCr');

--shows house information for houses between 1980-85,
--have a gable roof
--alley=! null
--or that are not in north ames,collgcr
SELECT saleprice, salecondition
FROM houseprices
WHERE yearbuilt BETWEEN 1980 AND 1985
    AND roofstyle = 'Gable'
    AND alley IS NOT NULL
OR neighborhood NOT IN ('NAmes', 'CollgCr');

SELECT COUNT(*)
FROM houseprices;