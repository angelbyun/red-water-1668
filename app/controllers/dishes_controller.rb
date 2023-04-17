class DishesController < ApplicationController
  def show
    @dish = Dish.find(params[:id])
  end

  def create
    @dish = Dish.find(params[:id])
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.save
    redirect_to "/dishes/#{@dish.id}"
  end

  def update
    @dish = Dish.find(params[:id])
    @ingredients = Ingredient.all
    @ingredients.update(ingredient_params)
    redirect_to "/dishes/#{@dish.id}"
  end

  private
  def ingredient_params
    params.permit(:name, :calories)
  end
end