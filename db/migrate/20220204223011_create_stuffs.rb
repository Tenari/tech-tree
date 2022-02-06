class CreateStuffs < ActiveRecord::Migration
  def change
    create_table :stuffs do |t|
      t.string :name
      t.text :description
      t.text :notes
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
