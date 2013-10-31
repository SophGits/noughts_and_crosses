class CreateGames < ActiveRecord::Migration
  def up
    create_table :games do |t|
      t.string :board
      t.string :winner
      t.string :turn_symbol, default: "X"
    end
  end

  def down
    drop_table :games
  end
end