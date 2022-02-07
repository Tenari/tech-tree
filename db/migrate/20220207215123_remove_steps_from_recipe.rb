class RemoveStepsFromRecipe < ActiveRecord::Migration
  def change
    remove_column :recipes, :steps
  end
end
