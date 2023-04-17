class CreateChefIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :chef_ingredients do |t|
      t.references :chef, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
