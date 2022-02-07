class Recipe < ActiveRecord::Base
  belongs_to :stuff
  has_many :steps
  has_many :step_materials, through: :steps
  has_many :step_tools, through: :steps
  has_many :materials, through: :steps
  has_many :tools, through: :steps

  def print
    puts self.name
    puts self.steps.inspect
  end

  def steps_text
    self.steps.order(:order).map {|s| "#{s.order} #{s.text}" }.join("\n")
  end
end
