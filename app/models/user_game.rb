class UserGame < ActiveRecord::Base
  attr_accessible :user_id, :game_id, :player

  belongs_to :user
  belongs_to :game

  validates :user_id, presence: true
  validates :game_id, presence: true

end