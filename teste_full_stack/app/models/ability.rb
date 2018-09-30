class Ability
  include CanCan::Ability

  def initialize(comprador)
    comprador ||= Comprador.new # guest user (not logged in)
    if comprador.admin?
      can :manage, :all
    else
      can [:read, :update, :destroy, :create], :all
    end
  end
end
