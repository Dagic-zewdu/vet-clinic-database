CREATE TABLE animals (
    name varchar(20),
    date_of_birth Date,
    escape_attempts INT,
    neutered Bit,
    weight_kg Decimal,
     PRIMARY KEY (id)
);

/*Add a column species of type string to your animals table. Modify your schema.sql file**/
ALTER TABLE animals
ADD species varchar(30);

/*27/04/2021*/
CREATE TABLE owners (
    id INT GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(250),
    age INT,
    PRIMARY KEY(id)
);

CREATE TABLE species (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(250),
    PRIMARY KEY(id)
);

ALTER TABLE animals ADD id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY;
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD species_id INT , ADD FOREIGN KEY(species_id) REFERENCES species(id);
ALTER TABLE animals ADD owner_id INT , ADD FOREIGN KEY(owner_id) REFERENCES owners(id);

/*28/04/2022*/
CREATE TABLE vets (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(250),
    age INT,
    date_of_gradutation DATE,
    PRIMARY KEY(id)
);

CREATE TABLE specializations (
    species_id INT,
    vet_id INT,
    FOREIGN KEY(species_id) REFERENCES species(id),
    FOREIGN KEY(vet_id) REFERENCES vets(id) 
);

CREATE TABLE visits (
    animal_id INT,
    vet_id INT,
    date_of_visit DATE,
    FOREIGN KEY(animal_id) REFERENCES animals(id),
    FOREIGN KEY(vet_id) REFERENCES vets(id) 
);
