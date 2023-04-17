require 'rails_helper'

RSpec.describe 'chef ingredient index page', type: :feature do
  let!(:chef_1) { Chef.create!(name: "Bobby Flay") }
  let!(:chef_2) { Chef.create!(name: "Masaharu Morimoto") }

  let!(:dish_1) { Dish.create!(name: "Street Tacos", description: "Mexican", chef: chef_1) }
  let!(:dish_2) { Dish.create!(name: "Chicken Fettuccine", description: "Italian", chef: chef_1) }
  let!(:dish_3) { Dish.create!(name: "Pad Kee Mao", description: "Thai", chef: chef_2) }
  let!(:dish_4) { Dish.create!(name: "Cheeseburger", description: "American", chef: chef_2) }

  let!(:ingredient_1) { Ingredient.create!(name: "Beef", calories: 100) }
  let!(:ingredient_2) { Ingredient.create!(name: "Tortilla", calories: 50) }
  let!(:ingredient_3) { Ingredient.create!(name: "Chicken", calories: 60) }
  let!(:ingredient_4) { Ingredient.create!(name: "Parmisian Cheese", calories: 150) }
  let!(:ingredient_5) { Ingredient.create!(name: "Rice Noodle", calories: 40) }
  let!(:ingredient_6) { Ingredient.create!(name: "Thai Basil", calories: 10) }
  let!(:ingredient_7) { Ingredient.create!(name: "Hamburger Bun", calories: 70) }
  let!(:ingredient_8) { Ingredient.create!(name: "Vegan Patty", calories: 30) }

  before do
    DishIngredient.create!(dish: dish_1, ingredient: ingredient_1)
    DishIngredient.create!(dish: dish_1, ingredient: ingredient_2)
    DishIngredient.create!(dish: dish_2, ingredient: ingredient_3)
    DishIngredient.create!(dish: dish_2, ingredient: ingredient_4)
    DishIngredient.create!(dish: dish_3, ingredient: ingredient_5)
    DishIngredient.create!(dish: dish_3, ingredient: ingredient_6)
    DishIngredient.create!(dish: dish_4, ingredient: ingredient_7)
    DishIngredient.create!(dish: dish_4, ingredient: ingredient_8)

    ChefIngredient.create!(chef: chef_1, ingredient: ingredient_1)
    ChefIngredient.create!(chef: chef_1, ingredient: ingredient_2)
    ChefIngredient.create!(chef: chef_1, ingredient: ingredient_3)
    ChefIngredient.create!(chef: chef_1, ingredient: ingredient_4)
    ChefIngredient.create!(chef: chef_2, ingredient: ingredient_5)
    ChefIngredient.create!(chef: chef_2, ingredient: ingredient_6)
    ChefIngredient.create!(chef: chef_2, ingredient: ingredient_7)
    ChefIngredient.create!(chef: chef_2, ingredient: ingredient_8)
  end

  describe 'As a visit when I visit the chef ingredient index page' do
    it 'lists all ingredients for a dish' do
      visit "/chef_ingredients"

      expect(page).to have_content(ingredient_1.name)
      expect(page).to have_content(ingredient_2.name)
      expect(page).to have_content(ingredient_3.name)
      expect(page).to have_content(ingredient_4.name)
    end
  end
end