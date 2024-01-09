# Banco de dados - Zoologico

- O zoologico é a base de dados geral
- O zoologico é dividido em áreas
- As areas serão: aquario, aviario e galeria
- Os animais serão divididos por vertebrados e invertabrados
- Os vertebrados serão divididos por classes
- As classes dos animais vertebrados serão: peixe, passaro, mamiferos, repteis e anfibios
- Animais invertebrados não terão classes

---
title: zoologico

classDiagram
    class zoologico
    zoologico : id INT
    zoologico : register INT
    zoologico : foundation DATE
    zoologico : title VARCHAR(100)
    zoologico : address VARCHAR(255)
    zoologico : phone INT
---