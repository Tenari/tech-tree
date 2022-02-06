class CreateStuffSubTypes < ActiveRecord::Migration
  def change
    create_table :stuff_sub_types, id:false do |t|
      t.integer :stuff_id
      t.integer :sub_type_id
    end
  end
end
