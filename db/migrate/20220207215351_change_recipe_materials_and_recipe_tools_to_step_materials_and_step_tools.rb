class ChangeRecipeMaterialsAndRecipeToolsToStepMaterialsAndStepTools < ActiveRecord::Migration
  def change
    rename_column :recipe_materials, :recipe_id, :step_id
    rename_column :recipe_tools, :recipe_id, :step_id

    rename_table :recipe_materials, :step_materials
    rename_table :recipe_tools, :step_tools
  end
end
