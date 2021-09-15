class FriendshipsController < ApplicationController

  def index
    @friendships = policy_scope(Friendship)
  end

  def create
    @friendship = current_user.friendships.build(friend_id: params[:id])
    authorize @friendship
    if @friendship.save
      redirect_to users_path
      flash[:notice] = "Friendship created"
    else
      redirect_to root_path
      flash[:alert] = "Friendship not created"
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    authorize @friendship
    if @friendship.destroy
      flash[:notice] = "Friendship removed"
      redirect_to request.referrer
    else
      render :index
      flash[:alert] = "Friendship not removed"
    end
  end
end
