-- Passo a passo para a criação do banco de dados em SQL

-- Crie o banco de dados
CREATE DATABASE zoologico;

-- Crie as 3 tabelas chamadas: aquarium, aviary e gallery
CREATE TABLE aquarium (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    scientific_name VARCHAR(50),
    gender VARCHAR(9),
    region VARCHAR(50),
    type_fish VARCHAR(19),
    type_animal VARCHAR(10)
);

CREATE TABLE aviary (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    scientific_name VARCHAR(50),
    gender VARCHAR(9),
    region VARCHAR(50),
    locomotion VARCHAR(7),
    type_animal VARCHAR(10)
);

CREATE TABLE gallery (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    scientific_name VARCHAR(50),
    gender VARCHAR(9),
    region VARCHAR(50),
    type_food VARCHAR(7),
    type_animal VARCHAR(10)
);

