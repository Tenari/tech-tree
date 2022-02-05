class RecipeMaterial < ActiveRecord::Base
  belongs_to :stuff
  belongs_to :recipe
end
