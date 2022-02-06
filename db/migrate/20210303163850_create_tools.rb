class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :type
      t.string :name
      t.text :description
      t.string :schematic
      t.text :recipie

      t.timestamps null: false
    end

    create_table :tools_tools, id: false do |t|
      t.integer :tool_id
      t.integer :prereq_id
    end

    create_table :tools_materials, id: false do |t|
      t.belongs_to :tool
      t.belongs_to :material
    end
  end
end
