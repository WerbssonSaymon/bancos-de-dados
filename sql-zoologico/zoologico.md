# Projeto de banco de dados relacional

## Banco de dados - Zoologico

Projeto:
- Criar um banco de dados MySQL
- Apresentar documentação MER (Modelagem Entidade-Relacionamento)
- Manipulações SQL

Requisitos:
- O zoologico é a base de dados geral
- O zoologico é dividido em áreas: aquario, aviario e recinto
- Cada área recebe a inserção de animais
- Os animais serão classificados em grupo animal: vertebrados e invertabrados 

## Inicio

Modelagem entidade-relacionamento

É criado o banco de dados com nome zoologico, junto com 3 tabelas que representam as áreas dos zoologico.

```sql
CREATE DATABASE zoologico
```

São criadas as tabelas das áreas com seus campos aonde serão inseridos as informações dos animais de cada área especifica.
Tabela aquario como exemplo.

```sql
CREATE TABLE `zoologico`.`aquario` (
    `id` INT NOT NULL AUTO_INCREMENT ,
    `nome` VARCHAR(50) NOT NULL ,
    `especie` VARCHAR(50) NOT NULL ,
    `dieta` VARCHAR(10) NOT NULL ,
    `quantidade` INT NOT NULL ,
    `origem` VARCHAR(50) NOT NULL ,
    `perigoso` BOOLEAN NOT NULL ,
    PRIMARY KEY (`id`)) ENGINE = InnoDB;
```

É criada a tabela que armazena os tipo de grupo que o animal pertence (vertebrado ou invertebrado).

```sql
CREATE TABLE `zoologico`.`grupo_animal` (
    `grupo_id` INT NOT NULL AUTO_INCREMENT ,
    `grupo` VARCHAR(12) NOT NULL ,
    PRIMARY KEY (`grupo_id`)) ENGINE = InnoDB;
```

e as inserções dos valores

```sql
INSERT INTO grupo_animal (grupo)
VALUES 
    ('Vertebrado'),
    ('Invertebrado');
```

Para finalizar, inserir as inserções de valores nas 3 tabelas, sendo 90 registros ao total.

## Algumas consultas

```sql
SELECT * FROM `aquario` WHERE perigoso = 1
SELECT `nome`, `quantidade` FROM `aquario` WHERE quantidade > 10
SELECT * FROM `aviario` ORDER BY id DESC LIMIT 5;
```
    
