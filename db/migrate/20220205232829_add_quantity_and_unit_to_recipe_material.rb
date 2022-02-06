class AddQuantityAndUnitToRecipeMaterial < ActiveRecord::Migration
  def change
    add_column :recipe_materials, :quantity, :decimal
    add_column :recipe_materials, :unit, :string
  end
end
