class Recipe < ActiveRecord::Base
  belongs_to :stuff
  has_many :recipe_materials
  has_many :materials, through: :recipe_materials, source: :stuff
  has_many :recipe_tools
  has_many :tools, through: :recipe_tools, source: :stuff

  def print
    puts self.name
    puts self.steps
  end
end
