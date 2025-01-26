-- Q1-1. The names of owners and their pet's name for all pets who are female.
select owner, name from pet where sex = 'f';

-- Q1-2. The names and birth dates of pets which are dogs.
select name, birth from pet where species = 'dog';

-- Q1-3. The names of the owners of birds.
select distinct owner from pet where species = 'bird';

-- Q1-4. The species of pets who are female.
select species from pet where sex = 'f';

-- Q1-5. The names and birth dates of pets which are cats or birds.
select name, birth from pet where species = 'cat' OR species = 'bird';

-- Q1-6. The names and species of pets which are cats or birds and which are female.
select name, species from pet where (species = 'cat' OR species = 'bird') AND sex = 'f';


-- Q2-1. The names of owners and their pets where the pet's name ends with “er” or “all” 
select owner, name from pet where name LIKE '%er' OR name LIKE '%all';

-- Q2-2. The names of any pets whose owner's name contains an "e"
select name from pet where owner LIKE '%e%';

-- Q2-3. The names of all pets whose name does not end with "fy"
select name from pet where name NOT LIKE '%fy';

-- Q2-4. All pet names whose owners name is only four characters long
select name from pet where owner LIKE '____';

-- Q2-5. All owners whose names begin and end with one of the first five letters of the alphabet
select owner from pet where owner GLOB '[A-Ea-e]*[A-Ea-e]';

-- Q2-6. Repeat the previous query, but make the query sensitive to the case of letters of the alphabet the characters in the name
select owner from pet where owner GLOB '[a-e]*[a-e]';
select owner from pet where owner GLOB '[A-E]*[A-E]';
select owner from pet where owner GLOB '[A-E]*[a-e]';
select owner from pet where owner GLOB '[a-e]*[A-E]';

-- Q3-1. The average number of check-ups that each owner has made with their pets 
select owner, AVG(checkups) AS average_checkups FROM pet group by owner;

-- Q3-2. The number of pets of each species in ascending order
select owner, species, COUNT(name) as number_of_pets from pet group by species;

-- Q3-3. The number of pets of each species that each owner has
select owner, species, COUNT(name) as number_of_pets from pet group by species;

-- Q3-4. The number of distinct species of pet each owner has
select distinct owner, count(species) as number_of_species 
from pet group by owner;

-- Q3-5. The number of pets of each gender there are in the database, where the gender is known 
select sex, COUNT(sex) as number_of_pets from pet 
where sex = 'm' or sex = 'f' group by sex;

-- Q3-6. The number of birds each owner has
select owner, COUNT(species) AS number_of_birds FROM pet 
where species = 'bird' group by owner;

-- Q3-7. The total number of check-ups each owner has made with all their pets
select owner, SUM(checkups) AS total_checkups FROM pet group by owner;