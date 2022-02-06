class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :steps
      t.integer :stuff_id

      t.timestamps null: false
    end
  end
end
