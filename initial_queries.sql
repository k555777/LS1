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