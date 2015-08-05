class Ability
  include CanCan::Ability
    user ||= User.new
    def initialize(user)
        unless user
            can :read, Snippet
            can :create, User
        else
            can [:read, :create], Snippet
            can [:update, :destroy], Snippet, :user_id => user.id
        end
    end


    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
end

