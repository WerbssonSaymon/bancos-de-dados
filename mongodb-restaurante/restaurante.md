# Projeto de banco de dados orientado a documentos

## Banco de dados - Restaurante

Projeto:
- Criar um banco de dados MongoDB
- Apresentar modelagem do banco

Requisitos:
- Criar as coleções de: usuarios, restaurantes, reservas e avaliações
- Realizar operações na base de dados

## Inicio

Modelagem das coleções

- users (usuarios)

{
    _id: id,
    name: nome,
    email: email,
    password: senha,
}

- restaurants (restaurantes)

{
    _id: od,
    name: nome,
    address: {
        street: rua,
        city: cidade,
        state: sigla do estado
    },
    phone: numero de telefone,
    email: email
}

- reservations (reservas)

{
    _id: id,
    restaurantId: id do restaurante,
    userId: id do usuario,
    date: data da reserva,
    partySize: quantidade de pessoas,
    status: status da reserva: confirmado | pendente | cancelado
}

- reviews (avaliações)

{
    _id: id,
    restaurantId: id do restaurante,
    userId: id do usuario,
    rating: nota de avaliação: 0.0 a 5.0,
    comment: critica
}

## Algumas consultas

db.restaurants.find()

db.users.find( _id: 0, name: 1, email: 1, password: 0)

db.reservations.find( {partySize: 2} )

db.reservations.find( {status: "Confirmed"} )

db.reviews.findOne()

## Inserções

db.reviews.insertMany([
    {
        _id: "reviewId",
        restaurantId: "restaurantId",
        userId: "userId",
        rating: 4.5,
        comment: "Great food and service!"
    },
    {
        _id: "reviewId",
        restaurantId: "restaurantId",
        userId: "userId",
        rating: 5.0,
        comment: "wonderful food"
    }
])

db.restaurants.insertOne({
    _id: "restaurantId",
    name: "The Great Restaurant",
    address: {
        street: "123 Main St",
        city: "São Francisco",
        state: "CA"
    },
    phone: "123-456-7890",
    email: "great@restaurant.com"
})

## Atualizações

db.reservations.updateOne( {_id: "reservationId"}, { $set: { status: "Confirmed" } } )

## Deleção

db.restaurants.deleteOne( {_id: "restaurantId"} )