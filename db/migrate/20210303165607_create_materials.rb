class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :type
      t.string :name
      t.text :description
      t.string :schematic
      t.integer :version
      t.text :ratios

      t.timestamps null: false
    end
  end
end
