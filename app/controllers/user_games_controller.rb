class User_gamesController < ApplicationController

 # load_and_authorize_resource : user
 # load_and_authorize_resource : game
 # load_and_authorize_resource :user_game, :through => :user
 # load_and_authorize_resource :user_game, :through => :game

  def new
    # @game = Game.find params[:game_id]
    # @user_game = User_game.new
  end

  def create
    # @game = Game.find(params[:game_id])
    #user_game = @game.user_games.create(params[:user_game])
    #redirect_to @godknowswhere
  end


end
