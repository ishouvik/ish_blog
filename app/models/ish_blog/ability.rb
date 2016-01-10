module IshBlog
  class Ability
    include CanCan::Ability
    def initialize(user)
      user ||= User.new # guests

      if user.has_role? :admin
        can :manage, :all
      elsif user.has_role? :user
        can :manage, Post, owner: user
        can :create, Post
      else
        can :read, :all
      end
    end
  end
end
