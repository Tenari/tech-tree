class Step < ActiveRecord::Base
  belongs_to :recipe
  has_many :step_materials
  has_many :step_tools
  has_many :materials, through: :step_materials, source: :stuff
  has_many :tools, through: :step_tools, source: :stuff
end
