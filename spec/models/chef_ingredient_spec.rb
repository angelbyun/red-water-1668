require 'rails_helper'

RSpec.describe ChefIngredient, type: :model do
  describe 'relationships' do
    it { should belong_to(:chef) }
    it { should belong_to(:ingredient) }
  end
end
