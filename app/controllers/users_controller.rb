class UsersController < ApplicationController

  #before_filter :authenticate, except: [:show, :index]
  load_and_authorize_resource :user #as in, everyone who visits the site is a user and can challenge the computer as a visitor/guest - even if they're not logged in.

  def index

  end

  def leaderboard
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    redirect_to(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    redirect_to(users_path)
  end

end