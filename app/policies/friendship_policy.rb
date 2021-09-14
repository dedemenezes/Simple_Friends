class FriendshipPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    Friendship.where(user_id: record.user_id, friend_id: record.friend_id).empty? 
  end
end
