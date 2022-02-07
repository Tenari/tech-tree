class StepMaterial < ActiveRecord::Base
  belongs_to :stuff
  belongs_to :step
  self.primary_key = "step_id"
end
