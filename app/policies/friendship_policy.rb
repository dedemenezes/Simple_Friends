class FriendshipPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where("user_id = ? OR friend_id = ?", user, user)
    end
  end

  def index?
    true
    # user == record.user || user == record.friend
  end

  def create?
    (
      Friendship.where(user_id: record.user_id, friend_id: record.friend_id).empty? &&
      Friendship.where(user_id: record.friend_id, friend_id: record.user_id).empty?
    )
  end

  def destroy?
    user.id == record.user_id ||  user.id == record.friend_id
  end
end
