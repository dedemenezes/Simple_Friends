class FriendshipsController < ApplicationController

  def index
    @friendships = current_user.friendships
  end

  def create
    @friendship = current_user.friendships.build(friend_id: params[:id])
    if @friendship.save
      redirect_to users_path
      flash[:notice] = "Friendship created"
    else
      redirect_to root_path
      flash[:alert] = "Friendship not created"
    end
  end
end
