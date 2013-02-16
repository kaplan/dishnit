class Recipe < ActiveRecord::Base
  attr_accessible :category_id, :cookbook_id, :description, :directions, :ingredients, :name, :photo_url, :user_id

  validates_presence_of :description, :directions, :ingredients, :name, :photo_url

  belongs_to :user
  belongs_to :category
  belongs_to :cookbook
end

