class AddQuantityToRecipeTool < ActiveRecord::Migration
  def change
    add_column :recipe_tools, :quantity, :decimal
  end
end
