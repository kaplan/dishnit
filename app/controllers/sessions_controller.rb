class SessionsController < ApplicationController
def new
end

def create
  @user = User.find_by_username(params[:username])

  if @user.present?
    session[:user_id] = @user.id
    redirect_to home_url, :notice => "You are logged in as #{@user.username}"

  else
    redirect_to '/sessions/new', :notice => "You are not logged in, try again"
  end
end

def destroy
reset_session
redirect_to home_url
end

end
