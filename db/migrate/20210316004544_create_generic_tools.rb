class CreateGenericTools < ActiveRecord::Migration
  def change
    create_table :generic_tools do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end

    add_column :tools, :generic_tool_id, :integer
  end
end
