class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.text :avatar
      t.text :bio
      t.string :role
      t.integer :score
    end
  end

  def down
    drop_table :users
  end
end