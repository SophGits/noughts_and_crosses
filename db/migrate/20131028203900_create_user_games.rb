class CreateUserGames < ActiveRecord::Migration
  def up
    create_table :user_games do |t|
      t.belongs_to :user
      t.belongs_to :game
      t.string :user_id
      t.string :game_id
      t.string :player
      t.timestamp
    end
  end

  def down
  end
end
