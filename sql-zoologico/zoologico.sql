-- Passo a passo para a criação do banco de dados em SQL

-- Crie o banco de dados
CREATE DATABASE zoologico;

-- Crie as 3 tabelas chamadas: aquarium, aviary e gallery
CREATE TABLE aquarium (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    scientific_name VARCHAR(50) NOT NULL,
    gender VARCHAR(9) NOT NULL,
    region VARCHAR(50) NOT NULL,
    type_fish VARCHAR(19) NOT NULL,
    type_animal VARCHAR(10) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE aviary (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    scientific_name VARCHAR(50) NOT NULL,
    gender VARCHAR(9) NOT NULL,
    region VARCHAR(50) NOT NULL,
    locomotion VARCHAR(7) NOT NULL,
    type_animal VARCHAR(10) NOT NULL,
    PRIMARY KEY (id)
)

CREATE TABLE gallery (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    scientific_name VARCHAR(50) NOT NULL,
    gender VARCHAR(9) NOT NULL,
    region VARCHAR(50) NOT NULL,
    type_food VARCHAR(7) NOT NULL,
    type_animal VARCHAR(10) NOT NULL,
    PRIMARY KEY (id)
);

-- Crie a tabela de grupos de animais
CREATE TABLE group_animal (
    group_id INT NOT NULL,
    group_name VARCHAR(10) NOT NULL,
    PRIMARY KEY (group_id)
);

-- Insira os dados de grupos 
INSERT INTO group_animal (group_id, group_name)
VALUES 
    (1, 'Vertebrado'),
    (2, 'Invertebrado');

-- Altere as 3 tabelas anteriores para adicionar a chave estrangeira group_id

ALTER TABLE aquarium
ADD COLUMN group_id INT NOT NULL,
ADD FOREIGN KEY (group_id) REFERENCES group_animal(group_id);

ALTER TABLE aviary
ADD COLUMN group_id INT NOT NULL,
ADD FOREIGN KEY (group_id) REFERENCES group_animal(group_id);

ALTER TABLE gallery
ADD COLUMN group_id INT NOT NULL,
ADD FOREIGN KEY (group_id) REFERENCES group_animal(group_id);

-- Exemplos de registros

INSERT INTO aquarium (name, scientific_name, gender, region, type_fish, type_animal, group_id)
VALUES 
    ('Tubarão Martelo', 'Sphyrna spp.', 'Macho', 'Oceano Pacífico', 'Cartilaginoso', 'Peixe', 1),
    ('Salmão do Atlântico', 'Salmo salar', 'Fêmea', 'Oceano Atlântico', 'Ósseo', 'Peixe', 1);

INSERT INTO aviary (name, scientific_name, gender, region, locomotion, type_animal, group_id)
VALUES 
    ('Canário', 'Serinus canaria', 'Macho', 'América do Sul', 'Voar', 'Passaro', 1),
    ('Pinguim Imperador', 'Aptenodytes forsteri', 'Macho', 'Antártica', 'Andar', 'Passaro', 1);

INSERT INTO gallery (name, scientific_name, gender, region, type_food, type_animal, group_id)
VALUES 
    ('Leão', 'Panthera leo', 'Macho', 'África', 'Carnívoro', 'Mamífero', 1),
    ('Sapo', 'Anura spp.', 'Fêmea', 'América do Sul', 'Herbívoro', 'Anfíbio', 1),
    ('Cobra', 'Serpentes spp.', 'Fêmea', 'Ásia', 'Carnívoro', 'Réptil', 1),
    ('Aranha de Jardim', 'Araneae spp.', 'Macho', 'Mundo todo', 'Carnívoro', 2);

