# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


catgories = [
    { :name => "Middle Eastern"},
    { :name => "Puerto Rican"}
]

Category.destroy_all
catgories.each do |category|
  u = Category.new
  u.name = category[:name]
  u.save
end

users = [
  { :username => "Joey", :email => "joseph.maassen@gmail.com"},
  { :username => "Dave", :email => "workalicious@gmail.com"},
  { :username => "Kitty", :email => "kittysingsuwan@gmail.com"},
  { :username => "Wendy", :email => "wendyt27@gmail.com"}
]

User.destroy_all
users.each do |user|
  u = User.new
  u.username = user[:username]
  u.email = user[:email]
  u.save
end

cookbooks = [
  { :user_id => User.find_by_username("Joey").id, :name => "Foodalicious" },
  { :user_id => User.find_by_username("Dave").id, :name => "Special Foods" },
  { :user_id => User.find_by_username("Kitty").id, :name => "Eat Up" },
  { :user_id => User.find_by_username("Wendy").id, :name => "Tasty Delite" }
]

Cookbook.destroy_all
cookbooks.each do |book|
  c = Cookbook.new
  c.user_id = book[:user_id]
  c.name = book[:name]
  c.save
end

recipes = [
  { :name => "Chicken Shawarma",
    :description => "Middle Eastern chicken dish",
    :ingredients => "Yogurt, Cucumber, Chicken",
    :directions => "combine ingredients in bowl",
    :photo_url => "http://thumbs.ifood.tv/files/chicken%20shawarma%20with%20hummus.jpg",
    :category_id => Category.find_by_name("Middle Eastern").id,
    :user_id => User.find_by_username("Joey").id,
    :cookbook_id => Cookbook.find_by_name("Foodalicious").id }
]

Recipe.destroy_all
recipes.each do |recipe|
  r = Recipe.new
  r.name = recipe[:name]
  r.description = recipe[:description]
  r.ingredients = recipe[:ingredients]
  r.directions = recipe[:directions]
  r.photo_url = recipe[:photo_url]
  r.category_id = recipe[:category_id]
  r.user_id = recipe[:user_id]
  r.cookbook_id = recipe[:cookbook_id]
  r.save
end

catalogs = [
  { :cookbook_id => Cookbook.find_by_name("Foodalicious").id, :recipe_id => Recipe.find_by_name("Chicken Shawarma").id}
]

Catalog.destroy_all
catalogs.each do |cat|
  d = Catalog.new
  d.cookbook_id = cat[:cookbook_id]
  d.recipe_id = cat[:recipe_id]
  d.save
end
