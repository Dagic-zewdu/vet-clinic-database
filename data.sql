INSERT INTO animals (name,date_of_birth,weight_kg,escape_attempts,neutered) VALUES ('Agumon',"03/02/2020",10.23,0,"1");
INSERT INTO animals (name,date_of_birth,weight_kg,escape_attempts,neutered) VALUES ('Gabumon',"15/11/2018",8,2,"1");
INSERT INTO animals (name,date_of_birth,weight_kg,escape_attempts,neutered) VALUES ('Pikachu',"7/1/2021,",15.04,1,"0");
INSERT INTO animals (name,date_of_birth,weight_kg,escape_attempts,neutered) VALUES ('Devimon',"7/1/2021,",15.04,5,"1");

/**ex-2*/
/**Animal: His name is Charmander. He was born on Feb 8th, 2020, and currently weighs -11kg. 
He is not neutered and he has never tried to escape.*/
INSERT INTO animals (name,date_of_birth,weight_kg,escape_attempts,neutered) VALUES ('Charmander',"8/2/2020",-11,0,"0");

/*Animal: Her name is Plantmon. She was born on Nov 15th, 2021, and currently weighs -5.7kg. 
She is neutered and she has tried to escape 2 times.**/
INSERT INTO animals (name,date_of_birth,weight_kg,escape_attempts,neutered) VALUES ('Plantmon',"15/11/2021",-5.7,2,"1");

/**Animal: His name is Squirtle. He was born on Apr 2nd, 1993, and currently weighs -12.13kg. 
He was not neutered and he has tried to escape 3 times.*/
INSERT INTO animals (name,date_of_birth,weight_kg,escape_attempts,neutered) VALUES ('Squirtle',"2/4/1993",-12.13,3,"0");

/*Animal: His name is Angemon. He was born on Jun 12th, 2005, and currently weighs -45kg.
 He is neutered and he has tried to escape once.*/
INSERT INTO animals (name,date_of_birth,weight_kg,escape_attempts,neutered) VALUES ('Angemon',"12/6/2005",-45,1,"1");

/*Animal: His name is Boarmon. He was born on Jun 7th, 2005, and currently weighs 20.4kg. 
He is neutered and he has tried to escape 7 times.**/
INSERT INTO animals (name,date_of_birth,weight_kg,escape_attempts,neutered) VALUES ('Boarmon',"7/6/2005",20.4,7,"1");

/*Animal: Her name is Blossom. She was born on Oct 13th, 1998, and currently weighs 17kg.
 She is neutered and she has tried to escape 3 times.*/
INSERT INTO animals (name,date_of_birth,weight_kg,escape_attempts,neutered) VALUES ('Blossom',"13/10/1998",17,3,"1");

/*Animal: His name is Ditto. He was born on May 14th, 2022, and currently weighs 22kg.
He is neutered and he has tried to escape 4 times*/
INSERT INTO animals (name,date_of_birth,weight_kg,escape_attempts,neutered) VALUES ('Ditto',"14/5/2022",22,4,"1");


/*27/04/2022*/
INSERT INTO owners (full_name, age) VALUES ('Sam Smith',34);
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell',19);
INSERT INTO owners (full_name, age) VALUES ('Bob',45);
INSERT INTO owners (full_name, age) VALUES ('Melody Pond',77);
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester',14);
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker',38);
INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');

/*28/04/2022*/
INSERT INTO vets (name, age, date_of_gradutation) VALUES ('William tatcher',45,'2000-04-23');
INSERT INTO vets (name, age, date_of_gradutation) VALUES ('Maisy Smith',26,'2019-01-17');
INSERT INTO vets (name, age, date_of_gradutation) VALUES ('Stephanie Mendez',64,'1981-05-04');
INSERT INTO vets (name, age, date_of_gradutation) VALUES ('Jack Harkness',38,'2008-06-08');

INSERT INTO specializations (species_id,vet_id) VALUES (1,1);
INSERT INTO specializations (species_id,vet_id) VALUES (1,3);
INSERT INTO specializations (species_id,vet_id) VALUES (2,3);
INSERT INTO specializations (species_id,vet_id) VALUES (2,4);

INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (1,1,'2020-05-24');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (1,3,'2020-07-22');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (2,4,'2021-02-02');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (5,2,'2020-01-05');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (5,2,'2020-03-08');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (5,2,'2020-05-14');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (3,3,'2021-05-04');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (8,4,'2021-02-24');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (10,2,'2019-12-21');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (10,1,'2020-08-10');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (10,2,'2021-04-07');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (9,3,'2019-09-29');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (7,4,'2020-10-03');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (7,4,'2020-11-04');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (4,2,'2019-01-24');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (4,2,'2019-05-15');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (4,2,'2020-02-27');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (4,2,'2020-08-03');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (6,3,'2020-05-24');
INSERT INTO visits (animal_id,vet_id,date_of_visit) VALUES (6,1,'2021-01-11');
