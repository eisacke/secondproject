class Ability
  include CanCan::Ability
    user ||= User.new
    def initialize(user)
        unless user
            can :read, Snippet
            can :create, User
        else
            can [:upvote], Snippet
            can [:read, :create], Snippet
            can [:read, :create], User
            can [:update, :destroy], Snippet, :user_id => user.id
            can [:update, :destroy], User, :id => user.id
        end
    end
end

