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

/* 27/04/2022
Modify your inserted animals so it includes the species_id value:
If the name ends in "mon" it will be Digimon*/
UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
/*All other animals are Pokemon*/
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;
/*Modify your inserted animals to include owner information (owner_id):
Sam Smith owns Agumon.*/
UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
/*Jennifer Orwell owns Gabumon and Pikachu.*/
UPDATE animals SET owner_id = 2 WHERE name = 'Gabumon' OR name = 'Pikachu';
/*Bob owns Devimon and Plantmon.*/
UPDATE animals SET owner_id = 3 WHERE name = 'Plantmon' OR name = 'Devimon';
/*Melody Pond owns Charmander, Squirtle, and Blossom.*/
UPDATE animals SET owner_id = 4 WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';
/*Dean Winchester owns Angemon and Boarmon.*/
UPDATE animals SET owner_id = 5 WHERE name = 'Angemon' OR name = 'Boarmon';
/*Write queries (using JOIN) to answer the following questions:
What animals belong to Melody Pond?*/
SELECT full_name, name FROM owners JOIN animals ON animals.owner_id = owners.id WHERE owners.full_name = 'Melody Pond';
/*List of all animals that are pokemon (their type is Pokemon).*/
SELECT species.name as specie, animals.name FROM animals JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';
/*List all owners and their animals, remember to include those that don't own any animal.*/
SELECT owners.full_name as owner, animals.name as animal FROM animals RIGHT JOIN owners ON animals.owner_id = owners.id;
/*How many animals are there per species?*/
SELECT COUNT(*) as quantity, species.name FROM animals JOIN species ON animals.species_id = species.id GROUP BY species.name;
/*List all Digimon owned by Jennifer Orwell.*/
SELECT full_name as owner, animals.name, species.name as specie FROM owners JOIN animals ON animals.owner_id = owners.id JOIN species ON species.id = animals.species_id WHERE owners.full_name = 'Jennifer Orwell' AND species.name = 'Digimon'; 
/*List all animals owned by Dean Winchester that haven't tried to escape.*/
SELECT full_name, animals.name as Animal, escape_attempts FROM owners JOIN animals ON animals.owner_id = owners.id WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts < 1;
/*Who owns the most animals?*/
SELECT full_name, COUNT(*) FROM animals JOIN owners ON animals.owner_id = owners.id GROUP BY owners.full_name ORDER BY count DESC;

/**28/04/2022*/
/*Write queries to answer the following:
Who was the last animal seen by William Tatcher?*/
SELECT animals.name, visits.date_of_visit, vets.name as Doctor FROM animals JOIN visits ON animals.id = visits.animal_id JOIN vets ON vets.id = visits.vet_id WHERE vets.name = 'William tatcher' ORDER BY date_of_visit DESC LIMIT 1;
/*How many different animals did Stephanie Mendez see?*/
SELECT vet_id, vets.name, animals.name as animal FROM visits JOIN vets ON visits.vet_id = vets.id JOIN animals ON visits.animal_id = animals.id WHERE vets.name = 'Stephanie Mendez';
/*List all vets and their specialties, including vets with no specialties.*/
SELECT vets.name, species_id as speciality_id FROM specializations RIGHT JOIN vets ON specializations.vet_id = vets.id;
/*List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.*/
SELECT animal_id, animals.name, visits.date_of_visit, vets.name FROM visits JOIN animals ON visits.animal_id = animals.id JOIN vets ON visits.vet_id = vets.id WHERE vets.name = 'Stephanie Mendez' AND date_of_visit BETWEEN '2020-04-01' AND '2020-08-30';
/*What animal has the most visits to vets?*/
SELECT animals.name, COUNT(*) as visits FROM visits JOIN animals ON visits.animal_id = animals.id GROUP BY animals.name ORDER BY visits DESC;
/*Who was Maisy Smith's first visit?*/
SELECT animal_id, animals.name, visits.date_of_visit, vets.name FROM visits JOIN animals ON visits.animal_id = animals.id JOIN vets ON visits.vet_id = vets.id WHERE vets.name = 'Maisy Smith' ORDER by date_of_visit ASC LIMIT 1;
/*Details for most recent visit: animal information, vet information, and date of visit.*/
SELECT animals.name as animal, vets.name as doctor, date_of_visit FROM animals JOIN visits ON animals.id = visits.animal_id JOIN vets ON visits.vet_id = vets.id ORDER BY date_of_visit DESC LIMIT 1;
/*How many visits were with a vet that did not specialize in that animal's species?*/
SELECT COUNT(*) FROM visits LEFT JOIN specializations ON visits.vet_id = specializations.vet_id JOIN animals ON visits.animal_id = animals.id WHERE specializations.species_id <> animals.species_id OR specializations.species_id IS NULL;
/*What specialty should Maisy Smith consider getting? Look for the species she gets the most.*/
SELECT animal_id, animals.species_id, species.name as speciality FROM visits JOIN animals ON visits.animal_id = animals.id JOIN species ON animals.species_id = species.id JOIN vets ON visits.vet_id = vets.id WHERE vets.name = 'Maisy Smith';