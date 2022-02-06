class AddImageToStuff < ActiveRecord::Migration
  def change
    add_column :stuffs, :image, :string
  end
end
