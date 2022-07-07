# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'italian' }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'belgian' }
la_republica = { name: "La Republica", address: " Carrer de la Mercè, 13, 08002 Barcelona", category: 'french' }
sushi_he_vi = { name: "Sushi He Vi", address: "Carrer del Comte d'Urgell, 174, 08036 Barcelona", category: 'japanese' }
entrecote = { name: "L'entrecôte", address: "Carrer de Pau Claris, 142, 08009 Barcelona", category: 'french' }

[dishoom, pizza_east, la_republica, sushi_he_vi, entrecote].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
