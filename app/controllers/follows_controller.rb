class FollowsController < ApplicationController
  def create
    user = User.find_by(id: params[:id])
    Follow.create(followable: user, follower: current_user)
    redirect_to root_path, notice: "Successfully followed user"
  end

  def destroy
    user = User.find_by(id: params[:id])
    Follow.find_by(followable: user, follower: current_user).destroy
    redirect_to root_path, notice: "Successfully unfollowed user"
  end
end
