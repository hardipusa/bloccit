class PostPolicy < ApplicationPolicy
  def index?
    user.present?
  end
end

