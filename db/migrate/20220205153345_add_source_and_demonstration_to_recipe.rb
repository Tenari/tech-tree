class AddSourceAndDemonstrationToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :source, :string
    add_column :recipes, :demonstration, :string
  end
end
