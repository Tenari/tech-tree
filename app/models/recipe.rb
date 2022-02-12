class Recipe < ActiveRecord::Base
  belongs_to :stuff
  has_many :steps
  has_many :recipe_materials
  has_many :recipe_tools
  has_many :materials, through: :recipe_materials, source: :stuff
  has_many :tools, through: :recipe_tools, source: :stuff

  def print
    puts self.name
    puts self.steps.inspect
  end

  def steps_text
    self.steps.order(:order).map {|s| "#{s.order}. #{s.text}" }.join("\n")
  end

  def needed_stuffs
    self.materials.to_a + self.tools.to_a
  end
end
