class UsersController < ApplicationController

  #before_filter :authenticate, except: [:show, :index]
  # load_and_authorize_resource :user #as in, everyone who visits the site is a user and can challenge the computer as a visitor/guest - even if they're not logged in.

  def index

  end

  def leaderboard
    #unless user.score==nil? #undefined method `score' for #<Class:
      @users = User.order("score DESC").limit(12)
    #end
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
        @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id

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
