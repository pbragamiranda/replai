class PublicDatumPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
  	true
  end

  def new?
  	create?
  end

  #check if user is logged in
  def create?
  	true
  end
end
