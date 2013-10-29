class GamesController < ApplicationController

  #before_filter :authenticate, except: [:show, :index]
  #load_and_authorize_resource :anythinghere?

  def index
    #
  end

  #the state of the board at the last move
  def board
    @board = [].fill(0..8){|index|"e"}
    #or @board=[[],[],[]]
  end

  #who moved last
  def last_move
  end

  #places left to move
  def available_spaces
  end


  def winner
  #  @winner = the_user_id_of_the_winner
  #(if none, and game has finished - assume it was a draw. Have you done something to check game has been completed?)
  end

  def game_status
    #is the game ongoing, completed or are you waiting for another player to move?
  end


  def play_game
    require 'pry'
    require 'pry-byebug'
    #rows
        #board=[[1,2,3],[4,5,6],[7,8,9]]
    #columns
        #board.transpose => [[1, 4, 7], [2, 5, 8], [3,    6, 9]]
      def diag_1
        diag_1 = [board[0][0],board[1][1],board[2][2]]
      end
      def diag_2
        diag_2 = [board[0][2],board[1][1],board[2][0]]
      end

    board=[]
    board.fill(0..8){|index|"e"}
    #while game_status != "complete"
        puts "what's your move? 0-8"
        placement=gets.chomp.to_i
        case placement
          when 0
              board[0][0]="x"
        binding.pry
          when 1
              board[0][1]="x"
          when 2
              board[0][2]="x"
          when 3
              board[1][0]="x"
          when 4
            board[1][1]="x"
          when 5
            board[1][2]="x"
          when 6
            board[2][0]="x"
          when 7
            board[2][1]="x"
          when 8
            board[2][2]="x"
        end
    binding.pry
  end
end
