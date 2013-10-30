class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by_username params[:username]
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user, notice: "Logged in"
    else
      flash.now.alert = "Invalid login details"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "You have been logged out"
  end

end
