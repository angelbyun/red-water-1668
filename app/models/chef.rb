class Chef < ApplicationRecord
  validates_presence_of :name
  has_many :dishes

  has_many :chef_ingredients
  has_many :ingredients, through: :chef_ingredients
end