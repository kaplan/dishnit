class HomeController < ApplicationController

  def index
    @cookbook = Cookbook.find_by_user_id(session[:user_id])
  end

end
