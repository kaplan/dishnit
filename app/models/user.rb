class User < ActiveRecord::Base
  attr_accessible :email, :username

  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email

has_many :recipes, :through => :cookbooks
has_many :favorites
end
