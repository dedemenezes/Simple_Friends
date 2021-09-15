class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i( home )

  def home
  end

  def users
    @users = User.all
    @user_friendships = Friendship.where("user_id = ? OR friend_id = ?", current_user, current_user)
  end
end
