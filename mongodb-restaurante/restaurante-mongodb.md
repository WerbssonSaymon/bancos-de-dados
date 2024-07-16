db.createCollection("users")

db.createCollection("restaurants")

db.createCollection("reservations")

db.createCollection("reviews")

db.users.insertMany([
    {
        _id: "userId",
        name: "John Doe",
        email: "john@example.com",
        password: "1234",
    },
    {
        _id: "userId",
        name: "Lucky Great",
        email: "lucky@example.com",
        password: "3334",
    },
    {
        _id: "userId",
        name: "Anne Liz",
        email: "anne@example.com",
        password: "2220",
    },
    {
        _id: "userId",
        name: "Rodolpho Cors",
        email: "rodolpho@example.com",
        password: "7848",
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

db.restaurants.insertOne({
    _id: "restaurantId",
    name: "Ocean Blue",
    address: {
        street: "17 Great St",
        city: "São Paulo",
        state: "SP"
    },
    phone: "222-5415-4566",
    email: "ocean@restaurant.com"
})

db.reservations.insertMany([
    {
        _id: "reservationId",
        restaurantId: "restaurantId",
        userId: "userId",
        date: "2024-07-10T18:30:00Z",
        partySize: 4,
        status: "Confirmed" 
    },
    {
        _id: "reservationId",
        restaurantId: "restaurantId",
        userId: "userId",
        date: "2024-07-11T22:00:00Z",
        partySize: 2,
        status: "Cancelled" 
    },
    {
        _id: "reservationId",
        restaurantId: "restaurantId",
        userId: "userId",
        date: "2024-07-11T20:00:00Z",
        partySize: 5,
        status: "Confirmed" 
    },
    {
        _id: "reservationId",
        restaurantId: "restaurantId",
        userId: "userId",
        date: "2024-07-14T19:00:00Z",
        partySize: 2,
        status: "Pending" 
    }
])

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
    },
    {
        _id: "reviewId",
        restaurantId: "restaurantId",
        userId: "userId",
        rating: 2.0,
        comment: "Horrible service and they canceled my reservation"
    }
])