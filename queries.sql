/*Find all animals whose name ends in "mon".*/
SELECT *
FROM animals
WHERE name LIKE '%mon'

/*List the name of all animals born between 2016 and 2019*/
SELECT *
FROM animals
WHERE date_of_birth between '2016/01/01' and '2019/01/01'

/* List the name of all animals that are neutered and have less than 3 escape attempts.*/
SELECT *
FROM animals
WHERE neutered neutered=1 and escape_attempts <3

/*List date of birth of all animals named either "Agumon" or "Pikachu"**/
SELECT date_of_birth
FROM animals
WHERE neutered name="Agumon" or name="Pikachu"

/*List name and escape attempts of animals that weight more than 10.5kg*/
SELECT name,escape_attempts
FROM animals
WHERE weight>10.5

/*Find all animals that are neutered.**/
SELECT *
FROM animals
WHERE neutered neutered=1

/*Find all animals not named Gabumon.*/
SELECT *
FROM animals
WHERE name="Gabumon"


/**Find all animals with a weight between 10.4kg and 17.3kg 
(including the animals with the weights that equals precisely 10.4kg or 17.3kg)*/
SELECT *
FROM animals
WHERE weight>=10.4 and weight<=17.3 

/**ex-2*/
BEGIN; -- start transaction

   UPDATE animals
   SET species = 'unspecified'; -- make change

   SELECT species from animals; -- verify that change was made
   ROLLBACK;

   SELECT species from animals; -- verify that change was undone
/*Update the animals table by setting the species column to digimon for all animals that have a name ending in mon.*/
/*Update the animals table by setting the species column to pokemon for all animals that don't have species already set*/
BEGIN;
   UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon'; 
   UPDATE animals SET species = 'pokemon' WHERE species IS NULL; 

   SELECT species from animals; -- verify that change was made
   COMMIT;
   SELECT species from animals; -- verify that change persists after commit

/* delete all records in the animals table, then roll back the transaction.*/
BEGIN;
   DELETE FROM animals WHERE ;
   SELECT COUNT(*) FROM ANIMALS;
   ROLLBACK;
   SELECT COUNT(*) FROM ANIMALS;

/* Delete all animals born after Jan 1st, 2022.*/
/*Update all animals' weight to be their weight multiplied by -1*/
/*Update all animals' weights that are negative to be their weight multiplied by -1*/
BEGIN;
    DELETE FROM animals WHERE  date_of_birth >= '2022/01/01' ;
    SAVEPOINT SP1;

    UPDATE animals SET weight_kg = weight_kg * -1; 
    ROLLBACK TO SP21;
    UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0; 

    COMMIT;

/*How many animals are there?*/
SELECT COUNT(id)
FROM animals;

/*How many animals have never tried to escape*/
SELECT COUNT (escape_attempts)
FROM animals
WHERE escape_attempts="0"

/*What is the average weight of animals*/
SELECT AVG(weight)
FROM animals

/*who escapes the most, neutered or not neutered animals?*/
SELECT neutered,
 MAX(escape_attempts) 
FROM animals 
GROUP BY neutered;

/*What is the minimum of each type of animal?*/
SELECT MIN(weight)
FROM animals

/*What is the maximum of each type of animal?*/
SELECT MAX(weight)
FROM animals

/*What is the average number of escape attempts per animal type of those born between 1990 and 2000?*/
SELECT AVG(weight)
FROM animals
WHERE date_of_birth between '1990/01/01' and '2000/01/01'