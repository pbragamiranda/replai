class LaiRequestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    user_is_owner?
  end

  def submit?
    user_is_owner?
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end


  private
  def user_is_owner?
    record.user == user
  end
end
