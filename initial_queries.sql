-- Initial queries

SELECT * 
FROM pet;

SELECT * 
FROM pet 
WHERE sex = 'm';

SELECT owner 
FROM pet 
WHERE sex = 'm';

SELECT DISTINCT owner 
FROM pet;

SELECT name, species, sex 
FROM pet 
WHERE species = 'snake' OR species = 'bird';

SELECT name 
FROM pet 
WHERE sex < 'm';

SELECT name 
FROM pet 
WHERE sex < 'F';

SELECT name 
FROM pet 
WHERE sex < 'f';

SELECT name, birth FROM pet ORDER BY birth;
SELECT name, birth FROM pet ORDER BY birth DESC;
SELECT name, species, birth FROM pet ORDER BY species, birth DESC;

SELECT name FROM pet WHERE strftime('%m',birth) = strftime('%m','now');

SELECT name FROM pet WHERE strftime('%m',birth) = strftime('%m',05);

SELECT name, strftime('%m', birth) FROM pet;

SELECT name, strftime('%m', birth) AS Month FROM pet;

SELECT name, strftime('%m', birth)AS Month FROM pet WHERE death IS NULL;

SELECT owner, name, (checkups * 20) AS income FROM pet;

SELECT owner, name, birth, MIN(strftime('%Y',birth)) AS birth 
FROM pet GROUP BY owner;