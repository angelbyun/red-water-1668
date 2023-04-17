# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Chef.destroy_all
Dish.destroy_all
Ingredient.destroy_all

@chef_1 = Chef.create!(name: "Bobby Flay")
@chef_2 = Chef.create!(name: "Masaharu Morimoto")

@dish_1 = Dish.create!(name: "Street Tacos", description: "Mexican", chef: @chef_1)
@dish_2 = Dish.create!(name: "Chicken Fettuccine", description: "Italian", chef: @chef_1)
@dish_3 = Dish.create!(name: "Pad Kee Mao", description: "Thai", chef: @chef_2)
@dish_4 = Dish.create!(name: "Cheeseburger", description: "American", chef: @chef_2)

@ingredient_1 = Ingredient.create!(name: "Beef", calories: 100)
@ingredient_2 = Ingredient.create!(name: "Tortilla", calories: 50)
@ingredient_3 = Ingredient.create!(name: "Chicken", calories: 60)
@ingredient_4 = Ingredient.create!(name: "Parmisian Cheese", calories: 150)
@ingredient_5 = Ingredient.create!(name: "Rice Noodle", calories: 40)
@ingredient_6 = Ingredient.create!(name: "Thai Basil", calories: 10)
@ingredient_7 = Ingredient.create!(name: "Hamburger Bun", calories: 70)
@ingredient_8 = Ingredient.create!(name: "Vegan Patty", calories: 30)