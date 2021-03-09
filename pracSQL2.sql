SELECT DISTINCT neighborhood
FROM houseprices;

SELECT DISTINCT yearbuilt
FROM houseprices;

SELECT DISTINCT neighborhood, yearbuilt
FROM houseprices;

SELECT DISTINCT yearbuilt, neighborhood
FROM houseprices
ORDER BY neighborhood, yearbuilt DESC;