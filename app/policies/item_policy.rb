class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(active: true)
    end
  end

  def show?
    # anyone can view an active item...
    true
  end

  def create?
    # anyone can create an item
    true
  end

  def update?
    # only the item owner can update the item
    record.user == user
  end

  def destroy?
    # only the item owner can update the item
    record.user == user
  end

  def my_items?
    record.user == user
  end
end
