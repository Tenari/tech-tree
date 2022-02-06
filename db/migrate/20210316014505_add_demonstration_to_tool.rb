class AddDemonstrationToTool < ActiveRecord::Migration
  def change
    add_column :tools, :demonstration, :string
  end
end
