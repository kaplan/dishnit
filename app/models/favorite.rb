class Favorite < ActiveRecord::Base
  attr_accessible :recipe_id
belongs_to :recipe
has_many :categories, :through => :recipes
end
