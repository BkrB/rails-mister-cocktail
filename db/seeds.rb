require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Dropping the seeds"
Ingredient.destroy_all

puts "Creating the seeds"
ingredients = []

30.times do
  ingredients << Faker::Food.ingredient
  ingredients.uniq!
  ingredients.each do |i|
    Ingredient.create(name: i)
  end
end

puts "Seeds created"
# p Ingredient.all
