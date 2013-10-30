class User < ActiveRecord::Base
  has_secure_password
  validates :username, presence: true, uniqueness: true
  attr_accessible :username, :avatar, :email, :bio, :role, :password, :password_confirmation, :score, :remote_avatar_url
  mount_uploader :avatar, ImageUploader #for carrierwave


  has_many :user_games
  has_many :games, through: :user_games

  def role?(r)
    self.role == r.to_s
  end
end
