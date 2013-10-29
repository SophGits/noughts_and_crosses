class Game < ActiveRecord::Base
  attr_accessible :board, :winner

  has_many :user_games
  has_many :users, through: :user_games

  #validates :board, presence: true
end
