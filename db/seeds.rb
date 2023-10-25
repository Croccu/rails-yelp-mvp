# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all

restaurants = Restaurant.create([
  { name: 'La Papillon', address: 'St.Pierre', category: 'french', phone_number: '54782374'},
  { name: 'Vecchia Roma', address: 'Port Louis', category: 'italian', phone_number: '59023843' },
  { name: 'Waffle House', address: 'Quatre Bornes', category: 'belgian', phone_number: '52139072'},
  { name: 'Red Lantern', address: 'Moka', category: 'chinese', phone_number: '57823391' },
  { name: 'Izakaya', address: 'Grand Baie', category: 'japanese', phone_number: '53896931' }
])
Review.create([
    { rating: 3, content: 'Mediocre food, small choice of pastries', restaurant: restaurants[0] },
    { rating: 4, content: 'Good pizza, pasta and choice of wines', restaurant: restaurants[1] },
    { rating: 2, content: 'Rude service, crowded all the time', restaurant: restaurants[0] },
    { rating: 4, content: 'Good meals, nice variety, atmospheric place', restaurant: restaurants[3] },
    { rating: 5, content: 'Amazing sushi, wonderful service', restaurant: restaurants[4] }
  ])
