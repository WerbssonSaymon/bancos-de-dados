# Banco de dados - Zoologico

- O zoologico é a base de dados geral
- O zoologico é dividido em áreas
- As areas serão: aquario, aviario e galeria
- Os animais serão divididos por vertebrados e invertabrados
- Os vertebrados serão divididos por classes
- As classes dos animais vertebrados serão: peixe, passaro, mamiferos, repteis e anfibios
- Animais invertebrados não terão classes

## Inicio do banco de dados

```mermaid
---
    title: banco de dados
---

classDiagram
    class zoologico
    note "Tabelas do banco de dados"

    zoologico <|-- aquarium
    zoologico <|-- aviary
    zoologico <|-- gallery
```
---
   Tabela de grupo e suas relações
---

```mermaid
classDiagram
    class group_animal
    note "São as mesmas tabelas criadas anteriomente"

    group_animal <|-- aquarium
    group_animal <|-- aviary
    group_animal <|-- gallery
``` 

---
   Tabelas do banco de dados - Áreas
---

```mermaid

classDiagram
    class aquarium
    aquarium : id INT
    aquarium : name VARCHAR 50
    aquarium : scientific_name VARCHAR 50
    aquarium : gender VARCHAR 9
    aquarium : region VARCHAR 50
    aquarium : presence_bones VARCHAR 13
    aquarium : type_fish VARCHAR 19
    aquarium : group_id INT FK
```

```mermaid

classDiagram
    class aviary
    aviary : id INT
    aviary : name VARCHAR 50
    aviary : scientific_name VARCHAR 50
    aviary : gender VARCHAR 9
    aviary : region VARCHAR 50
    aviary : presence_bones VARCHAR 13
    aviary : locomotion VARCHAR 7
    aviary : group_id INT FK

```

```mermaid

classDiagram
    class gallery
    gallery : id INT
    gallery : name VARCHAR 100
    gallery : scientific_name VARCHAR 50
    gallery : gender VARCHAR 9
    gallery : region VARCHAR 50
    gallery : presence_bones VARCHAR 13
    gallery : type_food VARCHAR 7
    gallery : group_id INT FK

```

---
   Tabelas do banco de dados - Grupo de animais
---

```mermaid

classDiagram
    class group_animal
    group_animal : group_id INT PK
    group_animal : name VARCHAR 10

```