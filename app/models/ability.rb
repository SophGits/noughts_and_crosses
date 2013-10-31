class Ability
  include CanCan::Ability

  def initialize(user)
    #create a default new user if none passed
    user ||= User.new

    if user.role? :admin
      can :manage, :all
    else
      can :read, :all  #all non-admins\
      can :create, Game
      can :update, Game do |game|
        game.user == user
      end
      can :edit, User #self only - how to do this?
      can :create, User
      #can :create, comp_game
    end
  end
end
