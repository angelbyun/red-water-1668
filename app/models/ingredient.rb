class Ingredient < ApplicationRecord
  has_many :dish_ingredients
  has_many :dishes, through: :dish_ingredients

  has_many :chef_ingredients
  has_many :chefs, through: :chef_ingredients
end
