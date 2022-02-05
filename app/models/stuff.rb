class Stuff < ActiveRecord::Base
  belongs_to :parent, class_name: "Stuff"
  has_many :sub_types, class_name: "Stuff", foreign_key: "parent_id"
  has_many :recipes
  has_many :recipe_materials
  has_many :recipe_tools

  def print
    puts self.name
    puts self.description
    puts "recipes: #{self.recipes.count}"
  end
end
