class LikedPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    # I want to make sure a user can't like their own item...
    # record.user == !user
    true
  end

  def destroy?
    true
  end
end
