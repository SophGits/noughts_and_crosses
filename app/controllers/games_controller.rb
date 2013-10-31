class GamesController < ApplicationController

  def index
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    game = Game.create
    player1 = game.user_games.create({
      player: "X",
      user_id: current_user.id
    })
    player2 = game.user_games.create({
      player: "0",
      user_id: User::COMPUTER_ID
    })
    game.board = 9.times.map{ nil }.to_json
    game.save
    redirect_to game
  end

  def register_move
    game = Game.find params[:id]

    current_user_game = game.user_games.select{ |user_game|
      user_game.user_id == current_user.id
    }.first

    current_user_game.player
    board = JSON.parse game.board
    cell = params[:cell].to_i
    board[cell] = current_user_game.player
    game.board = board.to_json
    game.save

    if is_computer_playing?(game)
      computer_turn
    end

    redirect_to game

  end

  # this method determine if the currrent game is against the computer

  def is_computer_playing? game
    game_users_ids = game.user_games.map(&:user_id)
    game_users_ids.include? User::COMPUTER_ID
  end

  def computer_turn game
    board = JSON.parse game.board
  end
end