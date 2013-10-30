class UsersController < ApplicationController

  #before_filter :authenticate, except: [:show, :index]
  # load_and_authorize_resource :user #as in, everyone who visits the site is a user and can challenge the computer as a visitor/guest - even if they're not logged in.

  def index

  end

  def leaderboard
    @users = User.order("score DESC").limit(12)


    #@users = User.all #can sort by score from here.
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
      if @user.save
        if @user.email
          UserMailer.registration_confirmation(@user).deliver
        end

        respond_to do |format|
          format.html { redirect_to @user, notice: 'Thanks for signing up.' }
          format.json { render json: @user, status: :created, location: @user }
        end
      else
        respond_to do |format|
          format.html { render :new }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
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
