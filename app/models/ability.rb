class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    if user.admin?
      can :manage, :all
    else
      can :manage, Food, user: user
      can :manage, Recipe, user: user
      can :read, Food
      can :read, Recipe, public: true
      can :create, :all
    end
  end
end
