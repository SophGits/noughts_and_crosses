class Game < ActiveRecord::Base
  attr_accessible :board, :winner

  has_many :user_games
  has_many :users, through: :user_games

  #validates :board, presence: true


  # def self.create_user_game(player1_id, player2_id)
  #   Game.create
  # there should be 2 user-games relating to one game, right?
  #   User_game.create[user_id: player1_id, game_id: a_game.id, player_position: 1]
  #   User_game.create[user_id: player2_id, game_id: a_game.id, player_position: 2]
  #   @current_game=a_game.id
  #   a_game
  # end



  def self.create_user_vs_computer_game

  end

  def move_valid?

  end

  def winning_move?

  end

  def game_complete
    #are all sqaures full || a winning solution has ocurred.
  end

  def winning_player
    #whoever moved last in a winning game. Increase their score by 1.
  end



end


def winning_boards
  #board=[[1,2,3],[4,5,6],[7,8,9]]
  #rows
  @board.each_slice(3) {|a| p a}
  #columns
  #board.transpose => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
  board.transpose

  def diag_1
    diag_1 = [board[0][0],board[1][1],board[2][2]]
  end

  def diag_2
    diag_2 = [board[0][2],board[1][1],board[2][0]]
  end


end






# #while game_status != "complete"
#     puts "what's your move? 0-8"
#     placement=gets.chomp.to_i
#     case placement
#         when 0
#             board[0][0]="x"
#     binding.pry
#         when 1
#             board[0][1]="x"
#         when 2
#             board[0][2]="x"
#         when 3
#             board[1][0]="x"
#         when 4
#           board[1][1]="x"
#         when 5
#           board[1][2]="x"
#         when 6
#           board[2][0]="x"
#         when 7
#           board[2][1]="x"
#         when 8
#             board[2][2]="x"
# end

# binding.pry

# puts "Your turn (0-8 please)"
# placement=gets.chomp




