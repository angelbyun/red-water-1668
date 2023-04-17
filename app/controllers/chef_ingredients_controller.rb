class ChefIngredientsController < ApplicationController
  def index
    @chefs = Chef.all
    @ingredients = Ingredient.all
  end
end