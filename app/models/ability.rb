class Ability
  include CanCan::Ability

  def initialize(user)

    #create a default new user if none passed
    user ||= User.new

    if user.role? :admin
      can :manage, :all
    else
      can :read, :all  #all non-admins
    end

    #player
    if user.role?(:player)
      can :create, Game
      can :update, Recipe do |recipe|
        game.user == user
      end
      #can :destroy self?
      #can :update bio, avatar
      #can :invite_friend
      #can :challenge_user

      #visitor (not logged in - can only challenge computer)
    else
      can :create, User
      #can :create, comp_game
    end
  end
end
