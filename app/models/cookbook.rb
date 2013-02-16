class Cookbook < ActiveRecord::Base
  attr_accessible :name, :user_id
  belongs_to :user
  has_many :recipes
  has_many :categories, :through => :recipes
end
