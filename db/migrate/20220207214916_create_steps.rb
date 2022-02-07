class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :recipe_id
      t.integer :order
      t.text :text
      t.string :image
      t.string :demonstration
    end
  end
end
