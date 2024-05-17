-- Passo a passo para a criação do banco de dados em SQL

-- Crie o banco de dados
CREATE DATABASE zoologico;

-- Crie as 3 tabelas chamadas: aquario, aviario e recinto
CREATE TABLE `zoologico`.`aquario` (
    `id` INT NOT NULL AUTO_INCREMENT ,
    `nome` VARCHAR(50) NOT NULL ,
    `especie` VARCHAR(50) NOT NULL ,
    `dieta` VARCHAR(10) NOT NULL ,
    `quantidade` INT NOT NULL ,
    `origem` VARCHAR(50) NOT NULL ,
    `perigoso` BOOLEAN NOT NULL ,
     PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `zoologico`.`aviario` (
    `id` INT NOT NULL AUTO_INCREMENT ,
    `nome` VARCHAR(50) NOT NULL ,
    `especie` VARCHAR(50) NOT NULL ,
    `dieta` VARCHAR(10) NOT NULL ,
    `quantidade` INT NOT NULL ,
    `origem` VARCHAR(50) NOT NULL ,
    `perigoso` BOOLEAN NOT NULL ,
     PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `zoologico`.`recinto` (
    `id` INT NOT NULL AUTO_INCREMENT ,
    `nome` VARCHAR(50) NOT NULL ,
    `especie` VARCHAR(50) NOT NULL ,
    `dieta` VARCHAR(10) NOT NULL ,
    `quantidade` INT NOT NULL ,
    `origem` VARCHAR(50) NOT NULL ,
    `perigoso` BOOLEAN NOT NULL ,
     PRIMARY KEY (`id`)) ENGINE = InnoDB;

-- Crie a tabela de grupos de animais
CREATE TABLE `zoologico`.`grupo_animal` (
    `grupo_id` INT NOT NULL AUTO_INCREMENT ,
    `grupo` VARCHAR(12) NOT NULL ,
    PRIMARY KEY (`grupo_id`)) ENGINE = InnoDB;

-- Insira os dados de grupos 
INSERT INTO grupo_animal (grupo)
VALUES 
    ('Vertebrado'),
    ('Invertebrado');

-- Altere as 3 tabelas anteriores para adicionar a chave estrangeira group_id

BEGIN;

ALTER TABLE aquario
ADD COLUMN grupo_id INT NOT NULL,
ADD FOREIGN KEY (grupo_id) REFERENCES grupo_animal(grupo_id);

ALTER TABLE aviario
ADD COLUMN grupo_id INT NOT NULL,
ADD FOREIGN KEY (grupo_id) REFERENCES grupo_animal(grupo_id);

ALTER TABLE recinto
ADD COLUMN grupo_id INT NOT NULL,
ADD FOREIGN KEY (grupo_id) REFERENCES grupo_animal(grupo_id);

COMMIT;

-- Faça as inserções de registros nas 3 tabelas anteriores

INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Tubarão-tigre', 'Galeocerdo cuvier', 'Carnívoro', 3, 'Oceano Atlântico', true, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Baiacu', 'Tetraodontidae', 'Herbívoro', 5, 'Oceano Pacífico', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Piranha-vermelha', 'Pygocentrus nattereri', 'Carnívoro', 8, 'Rio Amazonas', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Cação', 'Carcharhinus plumbeus', 'Carnívoro', 2, 'Oceano Índico', true, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Tucunaré', 'Cichla', 'Carnívoro', 6, 'Rio Negro', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Peixe-palhaço', 'Amphiprioninae', 'Omnívoro', 4, 'Oceano Índico', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Arraia', 'Rajiformes', 'Carnívoro', 2, 'Oceano Atlântico', true, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Boto', 'Inia geoffrensis', 'Carnívoro', 1, 'Rio Amazonas', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Peixe-gato', 'Pimelodus', 'Carnívoro', 3, 'Rio Paraná', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Dourado', 'Salminus brasiliensis', 'Carnívoro', 2, 'Rio Paraná', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Garoupa', 'Epinephelinae', 'Carnívoro', 1, 'Oceano Atlântico', true, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Piranambu', 'Serrasalmus rhombeus', 'Carnívoro', 5, 'Rio Amazonas', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Bagre', 'Ariidae', 'Carnívoro', 4, 'Rio Amazonas', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Carpa', 'Cyprinus carpio', 'Omnívoro', 10, 'Europa e Ásia', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Pacu', 'Piaractus mesopotamicus', 'Herbívoro', 7, 'Rio Paraná', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Tambaqui', 'Colossoma macropomum', 'Omnívoro', 6, 'Rio Amazonas', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Pirarucu', 'Arapaima gigas', 'Carnívoro', 2, 'Rio Amazonas', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Peixe-boi', 'Trichechus', 'Herbívoro', 2, 'América do Sul', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Piraíba', 'Brachyplatystoma filamentosum', 'Carnívoro', 3, 'Rio Amazonas', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Acará', 'Cichlidae', 'Omnívoro', 8, 'Rio Amazonas', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Mero', 'Epinephelus itajara', 'Carnívoro', 1, 'Oceano Atlântico', true, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Piraí', 'Hoplias malabaricus', 'Carnívoro', 5, 'Rio Paraná', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Cascudo', 'Loricariidae', 'Herbívoro', 12, 'Rio Amazonas', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Traíra', 'Hoplias lacerdae', 'Carnívoro', 7, 'Rio Paraná', false, 1);
INSERT INTO aquario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Tilápia', 'Oreochromis niloticus', 'Omnívoro', 15, 'África', false, 1);

INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Águia', 'Aquila chrysaetos', 'Carnívoro', 2, 'América do Norte', true, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Coruja-buraqueira', 'Athene cunicularia', 'Carnívoro', 4, 'América do Sul', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Papagaio', 'Psittacidae', 'Omnívoro', 6, 'América do Sul', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Gavião-real', 'Harpia harpyja', 'Carnívoro', 1, 'América do Sul', true, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Flamingo', 'Phoenicopteridae', 'Omnívoro', 3, 'África', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Pinguim', 'Spheniscidae', 'Carnívoro', 5, 'Antártida', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Gavião-carrapateiro', 'Milvago chimachima', 'Carnívoro', 2, 'América do Sul', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Cacatua', 'Cacatuidae', 'Omnívoro', 4, 'Austrália', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Avestruz', 'Struthio camelus', 'Omnívoro', 2, 'África', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Arara', 'Ara', 'Omnívoro', 5, 'América do Sul', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Galo', 'Gallus gallus domesticus', 'Omnívoro', 8, 'Ásia', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Falcão', 'Falco', 'Carnívoro', 3, 'América do Norte', true, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Andorinha', 'Hirundinidae', 'Insetívoro', 10, 'Mundo inteiro', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Aguia-pescadora', 'Pandion haliaetus', 'Piscívoro', 2, 'América do Norte', true, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Tucano', 'Ramphastidae', 'Frugívoro', 6, 'América do Sul', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Gavião', 'Accipitridae', 'Carnívoro', 4, 'Mundo inteiro', true, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Arara-azul', 'Anodorhynchus hyacinthinus', 'Frugívoro', 1, 'Brasil', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Ganso', 'Anserinae', 'Herbívoro', 7, 'Mundo inteiro', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Cisne', 'Cygnus', 'Herbívoro', 3, 'Mundo inteiro', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Araponga', 'Procnias nudicollis', 'Frugívoro', 5, 'América do Sul', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Quero-quero', 'Vanellus chilensis', 'Omnívoro', 9, 'América do Sul', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Beija-flor', 'Trochilidae', 'Nectívoro', 12, 'América do Sul', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Gaivota', 'Laridae', 'Carnívoro', 6, 'Mundo inteiro', false, 1);
INSERT INTO aviario (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Pombo', 'Columbidae', 'Omnívoro', 15, 'Mundo inteiro', false, 1);

INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Leão', 'Panthera leo', 'Carnívoro', 3, 'África', true, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Elefante', 'Loxodonta africana', 'Herbívoro', 5, 'África', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Tigre', 'Panthera tigris', 'Carnívoro', 4, 'Ásia', true, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Girafa', 'Giraffa camelopardalis', 'Herbívoro', 6, 'África', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Urso-polar', 'Ursus maritimus', 'Carnívoro', 2, 'Ártico', true, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Rinoceronte', 'Rhinocerotidae', 'Herbívoro', 3, 'África', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Hipopótamo', 'Hippopotamus amphibius', 'Herbívoro', 4, 'África', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Leopardo', 'Panthera pardus', 'Carnívoro', 3, 'África', true, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Onça-pintada', 'Panthera onca', 'Carnívoro', 2, 'América do Sul', true, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Lobo', 'Canis lupus', 'Carnívoro', 5, 'América do Norte', true, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Cavalo', 'Equus ferus caballus', 'Herbívoro', 8, 'Mundo inteiro', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Gorila', 'Gorilla', 'Herbívoro', 2, 'África', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Hiena', 'Hyaenidae', 'Carnívoro', 4, 'África', true, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Morcego', 'Chiroptera', 'Insetívoro', 7, 'Mundo inteiro', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Orangotango', 'Pongo', 'Frugívoro', 3, 'Indonésia', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Tatu', 'Dasypodidae', 'Insetívoro', 5, 'América do Sul', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Macaco', 'Cebidae', 'Frugívoro', 6, 'América do Sul', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Zebra', 'Equus zebra', 'Herbívoro', 4, 'África', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Panda', 'Ailuropoda melanoleuca', 'Herbívoro', 2, 'China', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Búfalo', 'Syncerus caffer', 'Herbívoro', 6, 'África', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Antílope', 'Antilopinae', 'Herbívoro', 5, 'África', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Castor', 'Castoridae', 'Herbívoro', 4, 'América do Norte', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Esquilo', 'Sciuridae', 'Frugívoro', 8, 'Mundo inteiro', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Lince', 'Lynx', 'Carnívoro', 3, 'América do Norte', true, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Morsa', 'Odobenus rosmarus', 'Piscívoro', 2, 'Ártico', true, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Leopardo-das-neves', 'Panthera uncia', 'Carnívoro', 1, 'Ásia Central', true, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Raposa', 'Vulpes vulpes', 'Carnívoro', 4, 'Mundo inteiro', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Marmota', 'Marmota', 'Herbívoro', 7, 'América do Norte', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Lebre', 'Leporidae', 'Herbívoro', 6, 'Mundo inteiro', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Rato', 'Rattus', 'Omnívoro', 10, 'Mundo inteiro', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Coelho', 'Oryctolagus cuniculus', 'Herbívoro', 8, 'Mundo inteiro', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Texugo', 'Taxidea taxus', 'Omnívoro', 5, 'América do Norte', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Furão', 'Mustela putorius furo', 'Carnívoro', 3, 'Europa', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Fuinha', 'Martes foina', 'Omnívoro', 6, 'Europa', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Canguru', 'Macropodidae', 'Herbívoro', 4, 'Austrália', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Morcego-vampiro', 'Desmodontinae', 'Hematófago', 2, 'América Central', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Alce', 'Alces alces', 'Herbívoro', 3, 'América do Norte', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Caribu', 'Rangifer tarandus', 'Herbívoro', 5, 'América do Norte', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Marmosete', 'Callithrix', 'Frugívoro', 8, 'América do Sul', false, 1);
INSERT INTO recinto (nome, especie, dieta, quantidade, origem, perigoso, grupo_id) VALUES ('Quati', 'Nasua nasua', 'Omnívoro', 5, 'América do Sul', false, 1);




