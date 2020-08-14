# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Cleaning database.."
Ingredient.destroy_all

puts "Creating ingredients.."
lemon = { name: "lemon" }
ice = { name: "ice" }
mint = { name: "mint leaves" }
basil = { name: "basil" }
vodka = { name: "vodka" }
soda = { name: "soda" }
olives = { name: "olives" }
sugar = { name: "simple syrup" }
rum = { name: "rum" }
cherry = { name: "grenadine" }
orange = { name: "Triple Sec" }
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[ lemon, ice, mint, basil, vodka, soda, olives, sugar, rum, cherry, orange ].each do |attributes|
  ingredient = Ingredient.create!(attributes)
  puts "Created #{ingredient.name}"
end
puts "Finished!"