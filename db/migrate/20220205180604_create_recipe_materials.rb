class CreateRecipeMaterials < ActiveRecord::Migration
  def change
    create_table :recipe_materials, id: false do |t|
      t.integer :recipe_id
      t.integer :stuff_id
    end
  end
end
