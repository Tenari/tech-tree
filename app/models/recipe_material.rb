class RecipeMaterial < ActiveRecord::Base
  belongs_to :stuff
  belongs_to :recipe
  self.primary_key = "recipe_id"
end
