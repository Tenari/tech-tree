class ChangeStepSubTablesBackToRecipeSubTables < ActiveRecord::Migration
  def change
    rename_column :step_materials, :step_id, :recipe_id
    rename_column :step_tools, :step_id, :recipe_id

    rename_table :step_materials, :recipe_materials
    rename_table :step_tools, :recipe_tools
  end
end
