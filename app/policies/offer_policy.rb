class OfferPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def create?
    true
  end

  def destroy?
    true
  end

  def offer_decline?
    true
  end

  def offer_confirm?
    true
  end

  def my_swaps?
    true
  end
end
