require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  describe 'relationships' do
    it { should have_many(:dish_ingredients) }
    it { should have_many(:dishes).through(:dish_ingredients) }

    it { should have_many(:chef_ingredients) }
    it { should have_many(:chefs).through(:chef_ingredients) }
  end
end
